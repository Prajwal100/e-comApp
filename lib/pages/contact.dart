import 'package:flutter/material.dart';
import 'package:samiksha/main.dart';
import 'package:samiksha/colors.dart' as colors;

class ContactPage extends StatelessWidget {
  final int navFlag;

  const ContactPage({Key key, this.navFlag}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title:Text('Enquiry Form'),
      ),
      drawer:(navFlag==1) ? MyDrawer() : null,
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,18,0,10),
                    child: Text('Enquiry Form',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,decoration: TextDecoration.underline),),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:10.0),
                    child: Text("Hi! Need help? Contact us! As always, we'd love to help your! Pice a way to contact",textAlign:TextAlign.center,),
                  )
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 20, 0, 10),
                    child: Text('Your name',style: TextStyle(fontWeight: FontWeight.bold),),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:32.0),
                    child: Material(
                      color: Colors.grey.withOpacity(.1),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: TextField(
                          cursorColor:Colors.black54 ,
                          decoration: InputDecoration(
                            hintText: 'Ramesh Shrestha',
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 20, 0, 10),
                    child: Text('Your email address',style: TextStyle(fontWeight: FontWeight.bold),),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:32.0),
                    child: Material(
                      color: Colors.grey.withOpacity(.1),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: TextField(
                          cursorColor:Colors.black54 ,
                          decoration: InputDecoration(
                            hintText: 'Ramesh@gmail.com',
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 20, 0, 10),
                    child: Text('Leave your enquiry',style: TextStyle(fontWeight: FontWeight.bold),),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:32.0),
                    child: Material(
                      color: Colors.grey.withOpacity(.1),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Container(
                          height: 100,
                          child: TextField(
                            cursorColor:Colors.black54 ,
                            decoration: InputDecoration(
                              hintText: 'Message',
                                border: InputBorder.none
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),

//          Buttons
          Container(
            padding: EdgeInsets.fromLTRB(16,10,16,2),
            child: FlatButton(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Submit Enquiry',style: TextStyle(color: Colors.white,fontSize: 16),),
              ),
              color: colors.dIconColor,
              onPressed: (){},
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(16,2,16,2),
            child: FlatButton(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('info@samikshapublication.com',style: TextStyle(color: Colors.white,fontSize: 16),),
              ),
              color: colors.headerColor,
              onPressed: (){},
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(16,2,16,2),
            child: FlatButton(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('+977-987834954843',style: TextStyle(color: Colors.white,fontSize: 16),),
              ),
              color: colors.headerColor,
              onPressed: (){},
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(16,2,16,2),
            child: FlatButton(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Cancel',style: TextStyle(color: Colors.white,fontSize: 16),),
              ),
              color: Colors.redAccent,
              onPressed: (){},
            ),
          ),

        ],
      )
    );
  }
}
