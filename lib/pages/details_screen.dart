import 'package:SMT_Airelanes/models/flightsdto.dart';
import 'package:SMT_Airelanes/widgets/ticket_card.dart';
import 'package:animate_do/animate_do.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final FlightsDto flight;

  const DetailsScreen({Key key, this.flight}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      floatingActionButton: FadeInUp(
        child: FloatingActionButton(
          onPressed: () {},
          elevation: 20,
          child: Icon(Icons.flight),
          backgroundColor: Theme.of(context).primaryColor,
        ),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 300,
                    width: 400,
                    child: FadeIn(
                      duration: Duration(milliseconds: 1500),
                      delay: Duration(milliseconds: 500),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Image.network(
                              "https://images.kiwi.com/photos/220x165/${widget.flight.route[0].mapIdto}.jpg"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    DateFormat('EEEE MMM,DD').format(
                        DateTime.fromMillisecondsSinceEpoch(
                            widget.flight.dTime)),
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 8),
                  TicketCard(widget.flight),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
