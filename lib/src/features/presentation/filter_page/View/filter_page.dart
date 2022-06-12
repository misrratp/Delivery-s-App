import 'package:deliver_app_yt/src/features/presentation/filter_page/View/customsWidgets/list_tile_checked.dart';
import 'package:deliver_app_yt/src/features/presentation/filter_page/View/customsWidgets/price_filter.dart';
import 'package:flutter/material.dart';

//Commons
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Headers/headers_text.dart';

//Colors
import 'package:deliver_app_yt/src/colors/colors.dart';

//Customs Widget
import 'package:deliver_app_yt/src/features/presentation/filter_page/View/customsWidgets/cuisines_filters.dart';

class FilterPage extends StatefulWidget implements PreferredSizeWidget {
  FilterPage({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  // SORT BY BOOLEANS
  bool topRated = false;
  bool nearMe = false;
  bool costHighToLow = false;
  bool costLowToHigh = false;
  bool mostPopular = false;

  // FILTER BOOLEANS
  bool openNow = false;
  bool creditCards = false;
  bool alcoholServed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: _appBar(context),
      ),
      body: CustomScrollView(slivers: <Widget>[
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
            child: headerText(
                texto: "CUISINES",
                color: gris,
                fontWeight: FontWeight.w600,
                fontSize: 17.0),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: CuisinesFilter()),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
            child: headerText(
                texto: "SORT BY",
                color: gris,
                fontWeight: FontWeight.w600,
                fontSize: 17.0),
          ),
          _sortByContainer(),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
            child: headerText(
                texto: "FILTER",
                color: gris,
                fontWeight: FontWeight.w600,
                fontSize: 17.0),
          ),
          _filterContainer(),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
            child: headerText(
                texto: "PRICE",
                color: gris,
                fontWeight: FontWeight.w600,
                fontSize: 17.0),
          ),
          PriceFilter(),
        ]))
      ]),
    );
  }

  Widget _sortByContainer() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            ListTileCheck(
              texto: 'Top Rated',
              isActive: topRated,
              func: () {
                setState(() => topRated = !topRated);
              },
            ),
            ListTileCheck(
              texto: 'Nearest Me',
              isActive: nearMe,
              func: () {
                setState(() => nearMe = !nearMe);
              },
            ),
            ListTileCheck(
              texto: 'Cost High to Low',
              isActive: costHighToLow,
              func: () {
                setState(() => costHighToLow = !costHighToLow);
              },
            ),
            ListTileCheck(
              texto: 'Cost Low to High',
              isActive: costLowToHigh,
              func: () {
                setState(() => costLowToHigh = !costLowToHigh);
              },
            ),
            ListTileCheck(
              texto: 'Most Popular',
              isActive: mostPopular,
              func: () {
                setState(() => mostPopular = !mostPopular);
              },
            ),
          ],
        ));
  }

  Widget _filterContainer() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            ListTileCheck(
              texto: 'Open Now',
              isActive: openNow,
              func: () {
                setState(() => openNow = !openNow);
              },
            ),
            ListTileCheck(
              texto: 'Credits Card',
              isActive: creditCards,
              func: () {
                setState(() => creditCards = !creditCards);
              },
            ),
            ListTileCheck(
              texto: 'Alcohol Served',
              isActive: alcoholServed,
              func: () {
                setState(() => alcoholServed = !alcoholServed);
              },
            ),
          ],
        ));
  }
}

Widget _appBar(BuildContext context) {
  return AppBar(
    elevation: 1.5,
    backgroundColor: Colors.white,
    title: Container(
        child: headerText(texto: 'Filters', fontWeight: FontWeight.w600),
        alignment: Alignment.center),
    leading: Container(
      padding: EdgeInsets.only(top: 20, left: 7.0),
      child: headerText(
          texto: 'Reset', fontWeight: FontWeight.w500, fontSize: 17.0),
    ),
    actions: [
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          padding: EdgeInsets.only(top: 20, right: 10.0),
          child: headerText(
              texto: 'Done',
              color: orange,
              fontWeight: FontWeight.w500,
              fontSize: 17.0),
        ),
      ),
    ],
  );
}
