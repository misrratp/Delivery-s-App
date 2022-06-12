import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Alerts/alert_dialog.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:flutter/material.dart';
//Commons widgets
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/BackButtons/back_button.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Headers/headers_text.dart';
//C0lors
import 'package:deliver_app_yt/src/colors/colors.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              headerText(
                  texto: 'Forgot Password',
                  color: primaryColor,
                  fontSize: 30.0),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    'Please enter your email address. You will receive a link to create a new password via email.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0)),
              ),
              _emailInput(),
              roundedButton(
                  labelButton: 'Send',
                  color: orange,
                  context: context,
                  func: () => _showAlerta(context))

              // _sendButton(context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Your email',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

void _showAlerta(BuildContext context) {
  showAlertDialog(
      context,
      AssetImage('assets/lock.png'),
      'Your password has been reset',
      "You'll shortly receive an email with a code to setup a new password",
      roundedButton(
          labelButton: 'Done',
          color: orange,
          func: () {
            Navigator.pushNamed(context, 'login');
          })
      //  doneButton(context, "Done")

      );
}
