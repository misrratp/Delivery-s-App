import 'package:deliver_app_yt/src/colors/colors.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Cards/favourites_cards.dart';
import 'package:flutter/material.dart';
// commons widgets
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/BackButtons/back_button.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Headers/headers_text.dart';

class CollectionDetailPage extends StatelessWidget {
  const CollectionDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 230,
            backgroundColor: orange,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                    width: double.infinity,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                'https://images.unsplash.com/photo-1569246294372-ed319c674f14?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'
              )),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 1.3),
                  borderRadius: BorderRadius.circular(10)
                ),
                width: double.infinity,
                height: double.infinity,),
                Center(
                  child: headerText(texto: 'Asia \n Restaurant', color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35.0, textAlign: TextAlign.center),
                )  
                ],
              ),
            ),
            leading: Builder(
              builder:(BuildContext context){
                   return backButton(context, Colors.white);
              }),
          ),
          SliverList(
            delegate: SliverChildListDelegate (
              [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Container(
                      alignment: Alignment.topLeft,
                        margin: EdgeInsets.symmetric(vertical: 20.0),
                        child: headerText(texto: '128 places', color: Color.fromRGBO(51, 58, 77, 1.0 ), fontWeight: FontWeight.w600, fontSize: 17)
                        ),
                        Column(
                          children: [
                            favouritesCard(
                  context: context,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfDF8MHx8&auto=format&fit=crop&w=600&q=60'),
                  title: "Andy & Cindy's Dinner",
                  subtitle: "87 Botsford Circle Apt",
                  review: "4.8",
                  ratings: "(233 ratings)",
                  buttonText: 'Delivery',
                  hasActionButton: true,
                  isFavourite: true),
                        favouritesCard(
                  context: context,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfDF8MHx8&auto=format&fit=crop&w=600&q=60'),
                  title: "Andy & Cindy's Dinner",
                  subtitle: "87 Botsford Circle Apt",
                  review: "4.8",
                  ratings: "(233 ratings)",
                  buttonText: 'Delivery',
                  hasActionButton: true,
                  isFavourite: false),
                  
                          ],
                        )
                    ],
                  ),
                )
                ]
            ))
        ],
      ),
    );
  }
}