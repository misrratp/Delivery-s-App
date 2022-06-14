import 'package:flutter/material.dart';
//commons widgets
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/BackButtons/back_button.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Headers/headers_text.dart';

class CollectionsPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            title: headerText(texto: 'Collections', fontSize: 17),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.black);
            }),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 30.0, right: 20.0),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              children: [
                 _card(context),
                 _card(context),
                 _card(context),
                 _card(context),
                 _card(context),
                 _card(context),
                 _card(context),
                 _card(context),
                 _card(context),
                 _card(context),
                 _card(context),
                 _card(context),
                 _card(context),
                 _card(context),
                 _card(context),
                 _card(context)
                 

              ],
              ),
              
              )
          
        ],
      ),
    );
  }
}

Widget _card(BuildContext context) {
       return GestureDetector(
         onTap: (){
           Navigator.pushNamed(context, 'collections-detail');

         },
         child: Stack(
           children: [
             ClipRRect(
               borderRadius: BorderRadius.circular(10),
              child: Image(
                width: 165,
                height: 190,
                fit: BoxFit.cover,
                image: NetworkImage(
                'https://images.unsplash.com/photo-1569246294372-ed319c674f14?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'
              )),
             ),
             Container(
               width: 165,
                height: 190,
               decoration: BoxDecoration(
                 color: Color.fromRGBO(0, 0, 0, 1.3),
                 borderRadius: BorderRadius.circular(10)
              ),
             ),
             Container(
               alignment: Alignment.center,
               margin: EdgeInsets.only(right: 35, bottom: 20.0),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   headerText(texto: 'Asia', color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                   headerText(texto: '128 places', color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300)
                 ],
               ),
             )
           ],
         ));
}