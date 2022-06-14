import 'package:deliver_app_yt/src/colors/colors.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Headers/headers_text.dart';
import 'package:flutter/material.dart';

class PlaceDetailPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: orange,
            expandedHeight: 395,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                    width: double.infinity,
                    height: 350,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'
              )),
              Container(
                decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 1.5)),
                width: double.infinity,
                height: 350
              ),
              Wrap(children: [
                Container(
                  margin: EdgeInsets.only(top: 121.0, left: 30.0, right: 15.0),
                  width: double.infinity,
                  height: 25,
                  child: Row(
                    children: [
                    
                    RaisedButton(
                      elevation: 0.5,
                      onPressed: (){},
                      shape: StadiumBorder(),
                      child: headerText(texto: 'Free Delivery', color: Colors.white, fontSize: 12.0),
                      color: orange,
                      )
                    ],
                  ),
                )
              ],)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}