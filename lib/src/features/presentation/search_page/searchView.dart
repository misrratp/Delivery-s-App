import 'package:deliver_app_yt/src/colors/colors.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/card_vertical.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/header_double.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/headers_text.dart';
import 'package:flutter/material.dart';
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
                    _sliderRecentSearch()
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
            return cardVertical(context: context, width: 160.0, height: 120.0,
            title: "Andy & Cindy's Diner",
            subtitle: "87 Botsford Circle Apt",
            image: NetworkImage ('https://www.animalgourmet.com/wp-content/uploads/2017/05/mole.jpg') );
          },
        );
      },
    ),
  );
}
