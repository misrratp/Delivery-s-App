import 'package:flutter/material.dart';

//Colors
import 'package:deliver_app_yt/src/colors/colors.dart';

//Commons Widgets
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/card_vertical.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/header_double.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/headers_text.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/populares_card.dart';

//Swiper
import 'package:flutter_swiper/flutter_swiper.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.black,
                size: 40.0,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 20.0),
                        alignment: Alignment.centerLeft,
                        child: headerText(
                            texto: 'Search',
                            color: Colors.black,
                            fontSize: 30.0)),
                    _searchInput(context),
                    SizedBox(
                      height: 30.0,
                    ),
                    headerDoubleText(
                        textHeader: 'Recent search', textAction: 'Clear All'),
                    _sliderRecentSearch(),
                    SizedBox(
                      height: 20.0,
                    ),
                    headerDoubleText(
                        textHeader: 'Recommend for you', textAction: ''),
                    SizedBox(height: 20.0),
                    popularesCard(
                        context: context,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Zm9vZHxlbnwwfDF8MHx8&auto=format&fit=crop&w=600&q=60'),
                        title: "Andy & Cindy's Dinner",
                        subtitle: "87 Botsford Circle Apt",
                        review: "4.8",
                        ratings: "(233 ratings)",
                        hasActionButton: false),
                    popularesCard(
                        context: context,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Zm9vZHxlbnwwfDF8MHx8&auto=format&fit=crop&w=600&q=60'),
                        title: "Andy & Cindy's Dinner",
                        subtitle: "87 Botsford Circle Apt",
                        review: "4.8",
                        ratings: "(233 ratings)",
                        hasActionButton: false),
                    popularesCard(
                        context: context,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfDF8MHx8&auto=format&fit=crop&w=600&q=60'),
                        title: "Andy & Cindy's Dinner",
                        subtitle: "87 Botsford Circle Apt",
                        review: "4.8",
                        ratings: "(233 ratings)",
                        hasActionButton: false),
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}

Widget _searchInput(BuildContext context) {
  return Container(
    height: 40.0,
    margin: EdgeInsets.only(top: 20.0),
    padding: EdgeInsets.only(left: 5.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(20.0)),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 5.0),
          prefixIcon: Icon(Icons.search, color: gris),
          hintText: 'Search',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _sliderRecentSearch() {
  return Container(
    margin: EdgeInsets.only(top: 5.0),
    height: 190.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return cardVertical(
                context: context,
                width: 160.0,
                height: 120.0,
                title: "Andy & Cindy's Diner",
                subtitle: "87 Botsford Circle Apt",
                image: NetworkImage(
                    'https://www.animalgourmet.com/wp-content/uploads/2017/05/mole.jpg'));
          },
        );
      },
    ),
  );
}
