import 'package:flutter/material.dart';

class MyOrderTab extends StatefulWidget {
  MyOrderTab({Key? key}) : super(key: key);

  @override
  State<MyOrderTab> createState() => _MyOrderTabState();
}

class _MyOrderTabState extends State<MyOrderTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('My Order'),
      ),
    );
  }
}
