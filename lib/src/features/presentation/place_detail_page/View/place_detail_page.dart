import 'package:deliver_app_yt/src/colors/colors.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/BackButtons/back_button.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Headers/header_double.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Headers/headers_text.dart';
import 'package:flutter/material.dart';

class PlaceDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: orange,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          label: headerText(
              texto: 'Añadir a la cesta 95.40',
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 17)),
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
                          'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80')),
                  Container(
                      decoration:
                          BoxDecoration(color: Color.fromRGBO(0, 0, 0, 1.5)),
                      width: double.infinity,
                      height: 350),
                  Wrap(
                    children: [
                      _promoButton(),
                      _infoPlace(),
                      _infoPlaceStats(),
                      _offerBanner()
                    ],
                  )
                ],
              ),
            ),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.white);
            }),
            actions: [
              Container(
                margin: EdgeInsets.all(10),
                child: Image(
                  width: 28,
                  height: 28,
                  image: AssetImage('assets/share.png'),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                    size: 30,
                  ))
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            _headers(texto: 'Populares'),
            _sliderCards(),
            _headers(texto: 'Full Menu'),
            _menuList(context),
            _headers(texto: 'Reviews'),
            _reviews(),
            _headers(texto: 'Your Rating'),
            _yourRating(),
            SizedBox(
              height: 150.0,
            )
          ]))
        ],
      ),
    );
  }
}

Widget _promoButton() {
  return Container(
    margin: EdgeInsets.only(top: 121.0, left: 30.0, right: 15.0),
    width: double.infinity,
    height: 25,
    child: Row(
      children: [
        RaisedButton(
          elevation: 0.5,
          onPressed: () {},
          shape: StadiumBorder(),
          child: headerText(
              texto: 'Free Delivery', color: Colors.white, fontSize: 12.0),
          color: orange,
        )
      ],
    ),
  );
}

Widget _infoPlace() {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        margin: EdgeInsets.symmetric(vertical: 7.0),
        child: headerText(
            texto: "Boon Lay Ho Huat Fried Prawn Noodle",
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          children: [
            Icon(Icons.location_on, color: gris),
            headerText(
                texto: "03 Jameson Manors Apt. 177",
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0),
          ],
        ),
      )
    ],
  );
}

Widget _infoPlaceStats() {
  return Container(
    margin: EdgeInsets.only(top: 26.0),
    padding: EdgeInsets.symmetric(horizontal: 40.0),
    height: 70.0,
    decoration: BoxDecoration(
        border: Border(
            top: BorderSide(color: Colors.white),
            bottom: BorderSide(color: Colors.white))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 19.0,
                ),
                headerText(
                    texto: '4.5',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0)
              ],
            ),
            headerText(
                texto: '351 Ratings',
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0)
          ],
        ),
        Container(
          height: 40,
          decoration: BoxDecoration(
              border: Border(right: BorderSide(color: Colors.white))),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.bookmark,
                  color: Colors.white,
                  size: 19.0,
                ),
                headerText(
                    texto: '137k',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0)
              ],
            ),
            headerText(
                texto: 'Favourites',
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0)
          ],
        ),
        Container(
          height: 40,
          decoration: BoxDecoration(
              border: Border(right: BorderSide(color: Colors.white))),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.photo,
                  color: Colors.white,
                  size: 19.0,
                ),
                headerText(
                    texto: '345',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0)
              ],
            ),
            headerText(
                texto: 'Photos',
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0)
          ],
        )
      ],
    ),
  );
}

Widget _offerBanner() {
  return Container(
    color: Color.fromRGBO(255, 237, 214, 1.0),
    padding: EdgeInsets.all(20),
    height: 90.0,
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerText(
                texto: 'New Try Pickup',
                color: orange,
                fontWeight: FontWeight.bold,
                fontSize: 15.0),
            headerText(
                texto:
                    'Pickup on your time. Your order is \n ready when you are',
                color: primaryColor,
                fontWeight: FontWeight.w400,
                fontSize: 13.0)
          ],
        ),
        Spacer(),
        RaisedButton(
          elevation: 0.5,
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: orange,
          child: headerText(
              texto: 'Order now',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 13.0),
        )
      ],
    ),
  );
}

Widget _headers({texto: String}) {
  return Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 5.0),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: headerDoubleText(textHeader: texto, textAction: ''));
}

Widget _sliderCards() {
  return Container(
      height: 210.0,
      padding: EdgeInsets.only(left: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _cards();
          }));
}

Widget _cards() {
  return Container(
    margin: EdgeInsets.all(8.0),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image(
            width: 200.0,
            height: 100.0,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://images.unsplash.com/photo-1569246294372-ed319c674f14?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80')),
      ),
      Container(
          margin: EdgeInsets.only(top: 10.0),
          child: headerText(
              texto: "Penaut Chaat with Dahi",
              fontWeight: FontWeight.bold,
              fontSize: 15.0)),
      Container(
          alignment: Alignment.centerLeft,
          child: headerText(
              texto: "9.50",
              fontWeight: FontWeight.w500,
              color: gris,
              fontSize: 14.0)),
      Row(
        children: [
          Container(
              margin: EdgeInsets.only(top: 10),
              child: headerText(
                  texto: "Selecciona",
                  fontWeight: FontWeight.w500,
                  color: orange,
                  fontSize: 15.0)),
          Container(
            margin: EdgeInsets.only(top: 10, left: 90),
            child: Image(
              width: 20.0,
              height: 20.0,
              fit: BoxFit.cover,
              image: AssetImage('assets/plus_order.png'),
            ),
          )
        ],
      )
    ]),
  );
}

Widget _menuList(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(left: 10.0),
    child: Column(
      children: [
        _menuItem(context, 'Salads', '2'),
        _menuItem(context, 'Chicken', '5'),
        _menuItem(context, 'Soups', '6'),
        _menuItem(context, 'Vegetables', '7')
      ],
    ),
  );
}

Widget _menuItem(BuildContext context, String text, String itemCount) {
  return Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: gris))),
    child: Column(
      children: [
        ListTile(
          title: headerText(
              texto: text, fontWeight: FontWeight.w300, fontSize: 17.0),
          trailing: headerText(
              texto: itemCount, fontWeight: FontWeight.w300, fontSize: 17.0),
        ),
        _sliderCards()
      ],
    ),
  );
}

Widget _reviews() {
  return Container(
    height: 135,
    padding: EdgeInsets.only(left: 10),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return _cardReviews();
        }), // ListView.builder
  ); // Container
}

Widget _cardReviews() {
  var lorem =
      "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua";

  return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 10, right: 10),
      width: 350,
      child: Column(children: [
        Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image(
                    width: 49.0,
                    height: 43.0,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1655226327818-239d59738df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'))),
            Container(
                margin: EdgeInsets.only(left: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    headerText(
                        texto: 'Mike Smithson',
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                    headerText(
                        texto: '-45 Reviews',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: gris)
                  ],
                )),
            Spacer(),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 60,
                  height: 30,
                  color: orange,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                        texto: '4',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: headerText(
              texto: lorem,
              color: gris,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.left),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: headerText(
            texto: 'See full review',
            color: orange,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        )
      ]));
} // Container

Widget _yourRating() {
  return Container(
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.only(left: 10, right: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 60,
                  height: 30,
                  color: orangeWhitHalfOpacity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                        texto: '1',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 60,
                  height: 30,
                  color: orangeWhitHalfOpacity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                        texto: '2',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 60,
                  height: 30,
                  color: orange,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                        texto: '3',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 60,
                  height: 30,
                  color: orangeWhitHalfOpacity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                        texto: '4',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 60,
                  height: 30,
                  color: orangeWhitHalfOpacity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      headerText(
                        texto: '5',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        Container(
            margin: EdgeInsets.only(top: 10, left: 20),
            child: headerText(
                texto:
                    "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
                color: gris,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.left)),
        Container(
            margin: EdgeInsets.only(top: 10, left: 20),
            child: headerText(
              texto: "+ Edit your review",
              color: orange,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ))
      ],
    ),
  );
}
