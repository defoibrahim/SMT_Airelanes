import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class AirplaneCenterWidget extends StatelessWidget {
  const AirplaneCenterWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            Icons.circle,
            color: Colors.blueGrey.shade200,
            size: 14,
            
          ),
          SizedBox(width: 2),
          Expanded(
            child: DottedLine(
              direction: Axis.horizontal,
              lineThickness: 1.0,
              dashLength: 3.0,
              dashColor: Colors.blueGrey.shade200,
              dashRadius: 0.0,
              dashGapLength: 8.0,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
          ),
          SizedBox(width: 2),
          RotatedBox(
            quarterTurns: 1,
            child: Icon(
              Icons.flight,
              color: Colors.blueGrey.shade200,
              size: 24,
            ),
          ),
          SizedBox(width: 2),
          Expanded(
            child: DottedLine(
              direction: Axis.horizontal,
              lineThickness: 1.0,
              dashLength: 3.0,
              dashColor: Colors.blueGrey.shade200,
              dashRadius: 0.0,
              dashGapLength: 8.0,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
          ),
          SizedBox(width: 2),
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.blueGrey.shade200,
                style: BorderStyle.solid,
                width: 2,
              ),
            ),
          )
        ],
      ),
    );
  }
}