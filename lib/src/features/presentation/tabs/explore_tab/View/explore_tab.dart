import 'package:flutter/material.dart';
//Commons
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/headers_text.dart';
//Colors
import 'package:deliver_app_yt/src/colors/colors.dart';
//Swiper
import 'package:flutter_swiper/flutter_swiper.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(slivers: [
      SliverList(
          delegate: SliverChildListDelegate([
        Container(
          padding: EdgeInsets.symmetric(horizontal: 2),//Marca error de pixeles si tiene mas de 2
          child: Column(
            children: [
              _topBar(context),
              Container(
                padding: EdgeInsets.only(left: 20),//Apliqué esto en vez del padding symmetric ya que marca error de pixeles
                margin: EdgeInsets.symmetric(vertical: 20.0),
                alignment: Alignment.centerLeft,
                child: 
                
                headerText('Discover New Places', Colors.black, 30.0),
              ),
              _sliderCards()
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
      Container(
        width: 280, //Cambiar si sale un error de pixeles del lado derecho
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(left: 16.0),
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
          onPressed: () {},
        ),
      )
    ],
  );
}


Widget _sliderCards(){
   return Container(
     height: 350.0,
     child: Swiper(
       itemCount: 4,
       layout: SwiperLayout.DEFAULT,
       itemBuilder: (BuildContext context, int index){
         return ListView.builder(
           scrollDirection: Axis.horizontal,
           itemBuilder: (BuildContext context, int index){
             return _tarjeta(context);
           },
         );
       },
     ),
   );
}

Widget _tarjeta(BuildContext context){
    return Container(
     margin: EdgeInsets.all(5.0),
      child: Column(
        children: [
          ClipRRect(

            borderRadius: BorderRadius.circular(20.0),
            
            child: 
            
            Image(
              
              width: 200.0,
              height: 200.0,
              fit: BoxFit.cover,
              image: NetworkImage('https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vZHxlbnwwfDF8MHx8&auto=format&fit=crop&w=600&q=60')),
            
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Text('Andy & Gindys Diner', style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0
                ),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text('87 Bostford Circle Apt', style: TextStyle(
                  color: gris,
                  fontWeight: FontWeight.w500,
                  fontSize: 13.0
                ),),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: amarillo, size: 16.0),
                  Text('4.8', style: 
                  TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0
                  )
                  ),

                  Text('(233 Rattings)', style: 
                  TextStyle(
                    color: gris,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0
                  )
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0 ),
                    width: 80.0,
                    height: 18.0,
                    child: RaisedButton(
                      elevation: 0.5,
                      shape: StadiumBorder(),
                      color: Theme.of(context).accentColor,
                      textColor: Colors.white,
                      onPressed: (){},

                      child: Text('Delivery', style: TextStyle(fontSize:11.0),),
                    ),
                  )

                ],
              ),


            ],
          )
        ],
      ),
    );
}