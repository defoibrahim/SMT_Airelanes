import 'package:SMT_Airelanes/models/flightsdto.dart';
import 'package:SMT_Airelanes/pages/details_screen.dart';
import 'package:SMT_Airelanes/repositores/flight_repository.dart';
import 'package:SMT_Airelanes/widgets/ticket_card.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class FlightsScreen extends StatefulWidget {
  FlightsScreen({Key key, @required this.flight}) : super(key: key);

  final FlightsDto flight;

  @override
  _FlightsScreenState createState() => _FlightsScreenState();
}

class _FlightsScreenState extends State<FlightsScreen> {
  Future<List<FlightsDto>> _flights;
  FlightRepository _repo = FlightRepository();

  @override
  void initState() {
    super.initState();
    loadDate();
  }

  void loadDate() async {
    this._flights = _repo.getFlights(
      flyFrom: widget.flight.cityCodeFrom,
      flyTo: widget.flight.cityCodeTo,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            left: 0,
            child: Stack(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Positioned(
                  right: 16,
                  left: 16,
                  top: 50,
                  child: FadeInDown(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '${widget.flight.cityFrom} to ${widget.flight.cityTo}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            top: 100,
            left: 16,
            right: 16,
            child: Container(
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
                      child: Center(
                        child: Text("NO DATA"),
                      ), //show empty widget
                    );
                  }
                  if (snapshot.hasData) {
                    final flights = snapshot.data;
                    return ListView.separated(
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return DetailsScreen(flight: flights[index]);
                              },
                            ));
                          },
                          child: TicketCard(
                            flights[index],
                            index: index,
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(height: 8),
                      itemCount: flights.length,
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
