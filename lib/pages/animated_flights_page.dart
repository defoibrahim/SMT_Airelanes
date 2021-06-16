import 'package:SMT_Airelanes/models/flightsdto.dart';
import 'package:SMT_Airelanes/pages/flights_screen.dart';
import 'package:SMT_Airelanes/repositores/flight_repository.dart';
import 'package:SMT_Airelanes/widgets/airplane_center.dart';
import 'package:SMT_Airelanes/widgets/search_widget.dart';
import 'package:flutter/material.dart';

import 'package:animate_do/animate_do.dart';

import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:easy_localization/easy_localization.dart';

class AnimatedFlightsPage extends StatefulWidget {
  final String image;

  const AnimatedFlightsPage({Key key, this.image}) : super(key: key);
  @override
  _AnimatedFlightsPageState createState() => _AnimatedFlightsPageState();
}

class _AnimatedFlightsPageState extends State<AnimatedFlightsPage> {
  FlightRepository _repo = FlightRepository();
  Future<List<FlightsDto>> _flights;
  @override
  void initState() {
    _loadDate();
    super.initState();
  }

  void _loadDate() async {
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          FutureBuilder<List<FlightsDto>>(
            future: this._flights,
            builder: (context, snapshot) {
              var isCompleted =
                  snapshot.connectionState == ConnectionState.done;
              return CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    expandedHeight: 200.0,
                    floating: false,
                    pinned: true,
                    collapsedHeight: 82,
                    flexibleSpace: FlexibleSpaceBar(
                      titlePadding: const EdgeInsets.symmetric(horizontal: 16),
                      title: Container(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Flights',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
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
                                size: 22,
                              ),
                            ),
                          ],
                        ),
                      ),
                      background: FadeIn(
                        duration: Duration(milliseconds: 1500),
                        delay: Duration(milliseconds: 500),
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/airo.png',
                              scale: 2,
                            ),
                            Container(
                              height: 280,
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(.7),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      if (snapshot.connectionState != ConnectionState.done) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 200),
                          child: Center(child: CircularProgressIndicator()),
                        );
                      }
                      final flight = snapshot.data[index];
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 575),
                        child: FlipAnimation(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  transitionDuration: Duration(seconds: 1),
                                  pageBuilder: (_, __, ___) => FlightsScreen(
                                    flight: flight,
                                  ),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
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
                                      'From ${flight.cityFrom} TO ${flight.cityTo}'
                                          .toUpperCase(),
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
                                            DateTime.fromMillisecondsSinceEpoch(
                                                flight.aTime),
                                          ),
                                          flight.flyFrom,
                                          DateFormat('hh, mm a').format(
                                            DateTime.fromMillisecondsSinceEpoch(
                                                flight.aTime),
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
                                              DateTime
                                                  .fromMillisecondsSinceEpoch(
                                                      flight.aTime),
                                            ),
                                            flight.flyTo,
                                            DateFormat('hh, mm a').format(
                                              DateTime
                                                  .fromMillisecondsSinceEpoch(
                                                      flight.dTime),
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
                            ),
                          ),
                        ),
                      );
                    }, childCount: isCompleted ? snapshot?.data?.length : 1),
                  ),
                ],
              );
            },
          ),
        ],
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
