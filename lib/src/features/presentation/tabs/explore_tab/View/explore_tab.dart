import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:flutter/material.dart';
//Commons
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Headers/headers_text.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Cards/populares_card.dart';
//Colors
import 'package:deliver_app_yt/src/colors/colors.dart';
//Swiper


class ExploreTab extends StatelessWidget {
  const ExploreTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(slivers: [
      SliverList(
          delegate: SliverChildListDelegate([
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: 2), //Marca error de pixeles si tiene mas de 2
          child: Column(
            children: [
              _topBar(context),
              Container(
                padding: EdgeInsets.only(
                    left:
                        20), //Apliqué esto en vez del padding symmetric ya que marca error de pixeles
                margin: EdgeInsets.symmetric(vertical: 20.0),
                alignment: Alignment.centerLeft,
                child: headerText(
                    texto: 'Discover New Places',
                    color: Colors.black,
                    fontSize: 30.0),
              ),
              _sliderCards(),
              _header(context, 'Popular this week', 'Show All'),
              popularesCard(
                  context: context,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Zm9vZHxlbnwwfDF8MHx8&auto=format&fit=crop&w=600&q=60'),
                  title: "Andy & Cindy's Dinner",
                  subtitle: "87 Botsford Circle Apt",
                  review: "4.8",
                  ratings: "(233 ratings)",
                  buttonText: 'Delivery',
                  hasActionButton: true),
              popularesCard(
                  context: context,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Zm9vZHxlbnwwfDF8MHx8&auto=format&fit=crop&w=600&q=60'),
                  title: "Andy & Cindy's Dinner",
                  subtitle: "87 Botsford Circle Apt",
                  review: "4.8",
                  ratings: "(233 ratings)",
                  buttonText: 'Delivery',
                  hasActionButton: true),
              popularesCard(
                  context: context,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfDF8MHx8&auto=format&fit=crop&w=600&q=60'),
                  title: "Andy & Cindy's Dinner",
                  subtitle: "87 Botsford Circle Apt",
                  review: "4.8",
                  ratings: "(233 ratings)",
                  buttonText: 'Delivery',
                  hasActionButton: true),
              SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'collections');
                  },
                  child: _header(context, 'Collections', 'Show All')),
              _sliderCollection()
            ],
          ),
        ),
      ]))
    ]));
  }
}

Widget _topBar(BuildContext context) {
  return Row(
    children: [
      GestureDetector(
        onTap: (() => Navigator.pushNamed(context, 'search')),
        child: Container(
          width: 320,
          //Cambiar si sale un error de pixeles del lado derecho
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.only(left: 20.0),
          decoration: BoxDecoration(
              border: Border.all(color: Color.fromRGBO(234, 236, 239, 1)),
              borderRadius: BorderRadius.circular(20.0)),
          child: Row(
            children: [
              Icon(
                Icons.search,
                size: 20.0,
                color: gris,
              ),
              Container(
                margin: EdgeInsets.only(left: 5.0),
                child: Text(
                  'Search',
                  style: TextStyle(color: gris, fontSize: 17.0),
                ),
              )
            ],
          ),
        ),
      ),
      Container(
        width: 45.0,
        height: 45.0,
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            color: Color.fromRGBO(209, 209, 214, 1.0),
            borderRadius: BorderRadius.circular(30)),
        child: IconButton(
          icon: Icon(
            Icons.filter_list,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'filter');
          },
        ),
      )
    ],
  );
}

Widget _sliderCards() {
  return Container(
    height: 290.0, //Cambiar si hay errores de pixeles
    child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _tarjeta(context);
    }, )
  );
}

Widget _tarjeta(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, 'place-detail');
    },
    child: Container(
      margin: EdgeInsets.all(5.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vZHxlbnwwfDF8MHx8&auto=format&fit=crop&w=600&q=60')),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Text(
                  'Andy & Gindys Diner',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  '87 Bostford Circle Apt',
                  style: TextStyle(
                      color: gris, fontWeight: FontWeight.w500, fontSize: 13.0),
                ),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: amarillo, size: 16.0),
                  Text('4.8',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0)),
                  Text('(233 Rattings)',
                      style: TextStyle(
                          color: gris,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0)),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      width: 80.0,
                      height: 18.0,
                      child: createButton(
                        context: context,
                          labelButton: 'Delivery',
                          buttonColor: orange,
                          labelFontsize: 11.0))
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget _header(BuildContext context, String textHeader, String textAction) {
  return Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child:
            headerText(texto: textHeader, color: Colors.black, fontSize: 20.0),
      ),
      Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(
              textAction,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0),
            ),
            Icon(Icons.play_arrow)
          ],
        ),
      ),
    ],
  );
}

Widget _sliderCollection() {
  return Container(
    height: 180.0,
    child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _tarjetaCollection(context);
            })
  );
}

Widget _tarjetaCollection(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            width: 300,
            height: 150,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Zm9vZHxlbnwwfDF8MHx8&auto=format&fit=crop&w=600&q=60'),
          ),
        ),
      ],
    ),
  );
}
