import 'package:flutter/material.dart';
import 'package:samiksha/main.dart';
import 'package:samiksha/colors.dart' as colors;

class errorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: colors.headerColor,
        title:Text('Error'),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Text('Ohh! nothing found here!!!'.toUpperCase(),style: TextStyle(color:Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 20),)),
            Center(
              child:            Image.asset('images/404.gif')
              ,
            ),
            Text('Sorry!',style: TextStyle(color:colors.dIconColor,fontWeight: FontWeight.bold,fontSize: 30),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('The page you are looking for does not exist or another error occurred.',textAlign: TextAlign.center,style: TextStyle(color:colors.titleColor),),
            ),
            FlatButton(
              color:colors.headerColor,
              onPressed: (){},
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Text('Go Back',style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
