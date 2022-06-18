import 'package:deliver_app_yt/src/utils/extensions/screen_size.dart';
import 'package:flutter/material.dart';

class TextFieldsProfileDetailView extends StatelessWidget {
  // const TextFieldsProfileDetailView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _createTextFieldUsername(context),
        _createTextFieldEmail(context),
        _createTextFieldPhone(context),
        _createTextFieldDateofBirth(context),
        _createTextFieldDeliveryAdress(context)
      ],
    );
  }
}

Widget _createTextFieldEmail(BuildContext context) {
  return Container(
    width: getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'E-mail',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldUsername(BuildContext context) {
  return Container(
    width: getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Username',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldPhone(BuildContext context) {
  return Container(
    width: getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            hintText: 'Number phone',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldDateofBirth(BuildContext context) {
  return Container(
    width:getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
            hintText: 'Date of birth',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldDeliveryAdress(BuildContext context) {
  return Container(
    width: getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.text,
        maxLines: 3,
        decoration: InputDecoration(
            hintText: 'Delivery adress',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}
