import 'package:SMT_Airelanes/models/flightsdto.dart';
import 'package:SMT_Airelanes/widgets/airlanes_badge.dart';
import 'package:SMT_Airelanes/widgets/airplane_center.dart';

import 'package:flutter_svg/svg.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:fw_ticket/fw_ticket.dart';
import 'package:intl/intl.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {
  const TicketCard(
    this.flight, {
    Key key,
    this.index,
  }) : super(key: key);

  final FlightsDto flight;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: index,
      duration: const Duration(milliseconds: 375),
      child: FadeInUp(
        child: Column(
          children: [
            Ticket(
              innerRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0)),
              dashedBottom: false,
              outerRadius: new BorderRadius.circular(0),
              child: Container(
                constraints: BoxConstraints(minHeight: 200),
                padding: const EdgeInsets.all(16),
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RotatedBox(
                      quarterTurns: 1,
                      child:
                          SizedBox(width: 112, child: AirplaneCenterWidget()),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildFlightInfo(
                            'From',
                            flight.cityCodeFrom,
                            DateFormat('MMM,dd hh:mm a').format(
                              DateTime.fromMillisecondsSinceEpoch(flight.aTime),
                            ),
                            seat: flight.availability?.seats ?? 3,
                          ),
                          _buildFlightInfo(
                              'To',
                              flight.cityCodeTo,
                              DateFormat('MMM,dd hh:mm a').format(
                                DateTime.fromMillisecondsSinceEpoch(
                                    flight.dTime),
                              ),
                              seat: flight.availability?.seats ?? 3),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      alignment: Alignment.topCenter,
                      child: AirBadge(
                        text: flight.airlines[0],
                        textColor: Theme.of(context).primaryColor,
                        backgroundColor:
                            Theme.of(context).primaryColorLight.withOpacity(.2),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: DottedLine(
                direction: Axis.horizontal,
                lineThickness: 1.0,
                dashLength: 4.0,
                dashColor: Colors.grey.shade400,
                dashRadius: 0.0,
                dashGapLength: 8.0,
                dashGapColor: Colors.transparent,
                dashGapRadius: 0.0,
              ),
            ),
            Ticket(
              innerRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0)),
              dashedBottom: true,
              outerRadius: new BorderRadius.circular(0),
              child: Container(
                padding: const EdgeInsets.all(16),
                constraints: BoxConstraints(
                  minHeight: 60,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        RotatedBox(
                          quarterTurns: 1,
                          child: Icon(
                            Icons.flight,
                            color: Colors.grey.shade400,
                            size: 24,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          '${flight.route[0].airline}-${flight.route[0].flight_no}',
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    AirBadge(
                      text: "EN ROUTE",
                      textColor: Colors.green,
                      backgroundColor: Colors.grey.shade200,
                    ),
                    Text(
                      '${flight.fly_duration}',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _buildFlightInfo(String day, String name, String time,
      {bool alignLeft = true, num seat}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          day,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey.shade200,
            fontSize: 12,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            letterSpacing: 2,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(
              time,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            SizedBox(
              width: 70,
            ),
            SizedBox(
              height: 20,
              width: 20,
              child: SvgPicture.asset(
                "assets/images/door.svg",
                color: Colors.blueGrey.shade200,
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              seat.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
              SizedBox(
              width: 8,
            ),
            SizedBox(
              height: 20,
              width: 20,
              child: SvgPicture.asset(
                "assets/images/street.svg",
                color: Colors.blueGrey.shade200,
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "0",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
