import 'package:flutter/material.dart';
import 'package:samiksha/main.dart';
import 'package:samiksha/colors.dart' as colors;

class RewardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: colors.headerColor,
        title:Text('Reward'),
      ),
      drawer: MyDrawer(),
      body: new Center(
        child: Text('Reward Page'),
      ),
    );
  }
}
