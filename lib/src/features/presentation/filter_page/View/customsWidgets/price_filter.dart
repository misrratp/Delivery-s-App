import 'package:deliver_app_yt/src/colors/colors.dart';
import 'package:flutter/material.dart';

class PriceFilter extends StatefulWidget {
  @override
  State<PriceFilter> createState() => _PriceFilterState();
}

class _PriceFilterState extends State<PriceFilter> {
  // Properties
  RangeValues _values = RangeValues(0.3, 1.0);
  int _minPrize = 0;
  int _maxPrize = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('$_minPrize €', style: TextStyle(fontSize: 16)),
        Container(
          width: 300,
          child: RangeSlider(
              activeColor: orange,
              inactiveColor: gris,
              values: _values,
              min: 0,
              max: 200.0,
              onChanged: (RangeValues newValues) {
                setState(() {
                  _values = newValues;
                  _minPrize = _values.start.round();
                  _maxPrize = _values.end.round();
                });
              }),
        ),
        Text('$_maxPrize €', style: TextStyle(fontSize: 16))
      ],
    );
  }
}
