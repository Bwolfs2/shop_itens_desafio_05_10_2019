import 'package:flutter/material.dart';

class StarsRateWidget extends StatelessWidget {
  final double rate;

  const StarsRateWidget({Key key,@required this.rate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ...List.generate(
          rate.round(),
          (index) => Icon(
            Icons.star,
            size: 12,
          ),
        ),
        ...List.generate(
          5-rate.round(),
          (index) => Icon(
            Icons.star_border,
            size: 12,
          ),
        ),
      ],
    );
  }
}
