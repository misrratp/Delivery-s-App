import 'package:deliver_app_yt/src/colors/colors.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:flutter/material.dart';

class CuisinesFilter extends StatefulWidget {
  CuisinesFilter({Key? key}) : super(key: key);

  @override
  State<CuisinesFilter> createState() => _CuisinesFilterState();
}

class _CuisinesFilterState extends State<CuisinesFilter> {
  bool btnAmerican = false;
  bool btnAsia = false;
  bool btnSushi = false;
  bool btnPizza = false;

  bool btnDesserts = false;
  bool btnFastFood = false;
  bool btnVietnamese = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.start,
          children: [
            _createButtonFilter(() {
              setState(() => btnAmerican = !btnAmerican);
            }, btnAmerican, 'American', context),
            _createButtonFilter(() {
              setState(() => btnAsia = !btnAsia);
            }, btnAsia, 'Asian', context),
            _createButtonFilter(() {
              setState(() => btnSushi = !btnSushi);
            }, btnSushi, 'Sushi', context),
            _createButtonFilter(() {
              setState(() => btnPizza = !btnPizza);
            }, btnPizza, 'Pizza', context),
            _createButtonFilter(() {
              setState(() => btnDesserts = !btnDesserts);
            }, btnDesserts, 'Desserts', context),
            _createButtonFilter(() {
              setState(() => btnFastFood = !btnFastFood);
            }, btnFastFood, 'Fast Food', context),
            _createButtonFilter(() {
              setState(() => btnVietnamese = !btnVietnamese);
            }, btnVietnamese, 'Vietnamese', context),
          ],
        ),
      ],
    );
  }
}

Widget _createButtonFilter(Function()? func, bool isActive, String labelText, BuildContext context ) {
  return Container(
    width: 120,
    height: 50,
    margin: EdgeInsets.only(left: 5),
    child: createButton(
      context: context,
      labelButton: labelText,
      labelFontsize: 11.0,
      buttonColor: isActive ? orange : gris,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(color: isActive ? orange : gris)),
    ),
  );
}
