import 'package:SMT_Airelanes/models/flightsdto.dart';
import 'package:SMT_Airelanes/pages/flights_screen.dart';
import 'package:SMT_Airelanes/repositores/flight_repository.dart';
import 'package:SMT_Airelanes/widgets/airplane_center.dart';
import 'package:SMT_Airelanes/widgets/search_widget.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<List<FlightsDto>> _flights;
  FlightRepository _repo = FlightRepository();

  void loadDate() async {
    this._flights = _repo.getFlights();
  }

  _selectLanguage() async {
    final selectedLang = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Change Settings'.tr()),
          actions: [
            FlatButton(
              onPressed: () => Navigator.of(context).pop('ar'),
              child: Text(
                'language_ar'.tr(),
              ),
            ),
            FlatButton(
              onPressed: () => Navigator.of(context).pop('en'),
              child: Text(
                'language_en'.tr(),
              ),
            ),
          ],
        );
      },
    );

    if (selectedLang == null) return;
    await Future.delayed(Duration(milliseconds: 400));
    context.locale = Locale(selectedLang);
  }

  @override
  void initState() {
    super.initState();
    loadDate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 20,
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            left: 0,
            child: Stack(
              children: [
                Container(
                  height: 280,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Positioned(
                  // alignment: Alignment.topCenter,
                  right: 40,
                  left: -30,
                  top: 10,
                  child: Image.asset(
                    'assets/images/airo.png',
                    scale: 2,
                  ),
                ),
                Container(
                  height: 280,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(.7),
                  ),
                ),
                Positioned(
                  right: 16,
                  left: 16,
                  top: 50,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Flights',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InkWell(
                            onTap: () => _selectLanguage(),
                            child: Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      SearchWidget(
                        readOnly: true,
                        onTap: () {
                          print('stop cry and countinue, plz...... ');
                        },
                        prefix: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            right: 16,
            left: 16,
            top: 160,
            child: Container(
              padding: const EdgeInsets.only(top: 10),
              child: FutureBuilder<List<FlightsDto>>(
                  future: this._flights,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    if (snapshot.hasError) {
                      return Center(
                        child: Text('Error'),
                      );
                    }

                    if (snapshot.hasData) {
                      List<FlightsDto> flights = snapshot.data;
                      return ListView.separated(
                        shrinkWrap: true,
                        itemCount: flights.length,
                        itemBuilder: (context, index) {
                          FlightsDto flight = flights[index];
                          return _buildFlightCard(flight);
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 8,
                          );
                        },
                      );
                    }
                    return Container();
                  }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFlightCard(FlightsDto flight) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return FlightsScreen(
              flight: flight,
            );
          },
        ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'From ${flight.cityFrom} TO ${flight.cityTo}'.toUpperCase(),
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                _buildFlightInfo(
                  DateFormat('MMM, DD').format(
                    DateTime.fromMillisecondsSinceEpoch(flight.aTime),
                  ),
                  flight.flyFrom,
                  DateFormat('hh, mm a').format(
                    DateTime.fromMillisecondsSinceEpoch(flight.aTime),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: AirplaneCenterWidget(),
                ),
                SizedBox(
                  width: 10,
                ),
                _buildFlightInfo(
                    DateFormat('MMM, DD').format(
                      DateTime.fromMillisecondsSinceEpoch(flight.aTime),
                    ),
                    flight.flyTo,
                    DateFormat('hh, mm a').format(
                      DateTime.fromMillisecondsSinceEpoch(flight.dTime),
                    ),
                    alignLeft: false),
              ],
            ),
            SizedBox(height: 4),
            Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                flight.fly_duration.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.blueGrey.shade200,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column _buildFlightInfo(String day, String name, String time,
      {bool alignLeft = true}) {
    return Column(
      crossAxisAlignment:
          alignLeft ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        Text(
          day,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.blueGrey.shade200),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          name,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 2),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          time,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
