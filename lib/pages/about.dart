import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:samiksha/main.dart';
import 'package:samiksha/colors.dart' as colors;

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: colors.headerColor,
          title: Text('About Us'),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            )
          ],
        ),
        drawer: MyDrawer(),
        body: ListView(
          children: <Widget>[
//            Contact numbr
            Container(
              padding: EdgeInsets.symmetric(horizontal:20,vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[Icon(Icons.call,color: Colors.green,)],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 6,vertical: 0),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'Phone : ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                  fontSize: 16,
                                ),),
                            TextSpan(
                              text: '98070098888',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),)
                          ]),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical:0),
              child: Divider(color: Colors.black54,),
            ),

//            Email address
            Container(
              padding: EdgeInsets.symmetric(horizontal:20,vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[Icon(Icons.mail_outline,color: colors.dIconColor,)],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 6,vertical: 0),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'Email : ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                                fontSize: 16,
                              ),),
                            TextSpan(
                              text: 'info@samikshapublication.com',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),)
                          ]),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical:0),
              child: Divider(color: Colors.black54,),
            ),
//            Address
            Container(
              padding: EdgeInsets.symmetric(horizontal:20,vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[Icon(Icons.location_on,color: Colors.lightBlue,)],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 6,vertical: 0),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'Address : ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                                fontSize: 16,
                              ),),
                            TextSpan(
                              text: 'Bijulbazzar, Kathmandu',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),)
                          ]),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical:0),
              child: Divider(color: Colors.black54,),
            ),
//            Facebook address
            Container(
              padding: EdgeInsets.symmetric(horizontal:20,vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[Icon(FontAwesomeIcons.facebookF,color: Colors.blue,)],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 6,vertical: 0),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'Facebook : ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                                fontSize: 16,
                              ),),
                            TextSpan(
                              text: 'www.facebook.com',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),)
                          ]),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical:0),
              child: Divider(color: Colors.black54,),
            ),
//            instagram
            Container(
              padding: EdgeInsets.symmetric(horizontal:20,vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[Icon(FontAwesomeIcons.instagram,color: Colors.grey,)],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 6,vertical: 0),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'Instagram : ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                                fontSize: 16,
                              ),),
                            TextSpan(
                              text: 'www.instagram.com',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),)
                          ]),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

//            Description section
            Container(
              padding: EdgeInsets.symmetric(vertical: 16),
              child:Column(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('We are here!!!',style: TextStyle(fontSize: 20,color: Colors.black54,fontWeight: FontWeight.w600,decoration: TextDecoration.underline),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(' Flutter on the web is currently available as a technical preview. When trying Flutter apps on the web, you can expect to experience crashes and missing features. If this happens, please file an issue',textAlign:TextAlign.center,),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
