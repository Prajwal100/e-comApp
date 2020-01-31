import 'package:flutter/material.dart';
import 'package:samiksha/main.dart';
import 'package:samiksha/colors.dart' as colors;

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title:Text('Chat'),
      ),
      drawer: MyDrawer(),
      body: new Center(
        child: Text('Chat Page'),
      ),
    );
  }
}
