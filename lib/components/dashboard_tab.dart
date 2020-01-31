import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:samiksha/colors.dart' as colors;
import 'package:samiksha/components/features_products.dart';
import 'package:samiksha/pages/contact.dart';
import 'package:samiksha/pages/contribute-form.dart';
import 'package:samiksha/pages/forum.dart';
import 'package:samiksha/pages/notification.dart';
import 'package:samiksha/pages/practiceTest.dart';
import 'package:samiksha/pages/shop.dart';
class Dashboard_tab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return Container(
      child:Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(4),
                width: width/3,
                height: width/3,
                child:FlatButton(
                  color: colors.dashboardColor,
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new NotificationPage()));
                  },
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.notifications, color: colors.dIconColor,
                          size: 40,),
                        Text('Notice', style: TextStyle(fontWeight: FontWeight
                            .bold, fontSize: 14.0),),
                      ],
            ),
          ),
        ),
              ),
              Container(
                padding: EdgeInsets.all(4),
                width: width/3,
                height: width/3,
                child:FlatButton(
                  color: colors.dashboardColor,
                  onPressed: () {},
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.picture_as_pdf, color: colors.dIconColor,
                          size: 40,),
                        Text('Past Question',textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight
                            .bold, fontSize: 14.0),),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(4),
                width: width/3,
                height: width/3,
                child:FlatButton(
                  color: colors.dashboardColor,
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new ProfilePage()));
                  },
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.fileAlt, color: colors.dIconColor,
                          size: 40,),
                        Text('Practice Test',textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight
                            .bold, fontSize: 14.0),),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(4),
                width: width/3,
                height: width/3,
                child:FlatButton(
                  color: colors.dashboardColor,
                  onPressed: () {},
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.book, color: colors.dIconColor,
                          size: 40,),
                        Text('Read Book', style: TextStyle(fontWeight: FontWeight
                            .bold, fontSize: 14.0),),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(4),
                width: width/3,
                height: width/3,
                child:FlatButton(
                  color: colors.dashboardColor,
                  onPressed: () {},
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.fileCode, color: colors.dIconColor,
                          size: 40,),
                        Text('MOCK Test', style: TextStyle(fontWeight: FontWeight
                            .bold, fontSize: 14.0),),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(4),
                width: width/3,
                height: width/3,
                child:FlatButton(
                  color: colors.dashboardColor,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>ForumPage()));
                  },
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.group, color: colors.dIconColor,
                          size: 40,),
                        Text('Forum', style: TextStyle(fontWeight: FontWeight
                            .bold, fontSize: 14.0),),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(4),
                width: width/3,
                height: width/3,
                child:FlatButton(
                  color: colors.dashboardColor,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>ShopPage()));
                  },
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.add_shopping_cart, color: colors.dIconColor,
                          size: 40,),
                        Text('Buy Book', style: TextStyle(fontWeight: FontWeight
                            .bold, fontSize: 14.0),),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(4),
                width: width/3,
                height: width/3,
                child:FlatButton(
                  color: colors.dashboardColor,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>ContributePage()));

                  },
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.handsHelping, color: colors.dIconColor,
                          size: 40,),
                        Text('Contribute', style: TextStyle(fontWeight: FontWeight
                            .bold, fontSize: 14.0),),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(4),
                width: width/3,
                height: width/3,
                child:FlatButton(
                  color: colors.dashboardColor,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>ContactPage()));
                  },
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.mail_outline, color: colors.dIconColor,
                          size: 40,),
                        Text('Inquiry', style: TextStyle(fontWeight: FontWeight
                            .bold, fontSize: 14.0),),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
