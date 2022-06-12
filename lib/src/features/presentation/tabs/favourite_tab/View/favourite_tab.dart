import 'package:flutter/material.dart';


class FavouriteTab extends StatefulWidget {
  FavouriteTab({Key? key}) : super(key: key);


  @override
  State<FavouriteTab> createState() => _FavouriteTabState();
}

class _FavouriteTabState extends State<FavouriteTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Favourite'),
      ),
    );
  }
}
