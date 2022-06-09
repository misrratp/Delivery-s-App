import 'package:flutter/material.dart';
import 'package:deliver_app_yt/src/colors/colors.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                _topBar(context)
              ]
            )
          )
      ]));
  }
}

Widget _topBar(BuildContext context){
   return Row(
     children: [
         Container(
           width: 280,//Cambiar si sale un error de pixeles del lado derecho
           padding: EdgeInsets.all(10.0),
           margin: EdgeInsets.only(left: 16.0),
           decoration: BoxDecoration(
             border: Border.all(color: Color.fromRGBO(234, 236, 239, 1)),
             borderRadius: BorderRadius.circular(20.0)
           ),
            child: Row(
              children: [
                Icon(Icons.search, size: 20.0, color: gris,),
                Container(
                  margin: EdgeInsets.only(left: 5.0),
                  child: Text('Search', style: TextStyle(
                    color: gris,
                    fontSize: 17.0
                  ),),
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
             borderRadius: BorderRadius.circular(30)
           ),
           child: IconButton(
             icon: Icon(Icons.filter_list, size: 30, color: Colors.white,),
             onPressed: (){},
           ),

         )
     ],
   );
}