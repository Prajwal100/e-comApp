import 'package:flutter/material.dart';
import 'package:samiksha/main.dart';
import 'package:samiksha/colors.dart' as colors;
import 'package:file_picker/file_picker.dart';
class ContributePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: colors.headerColor,
        title: Text('Add Contribute'),
      ),
      body: ListView(
        children: <Widget>[
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Column(
          children: <Widget>[
          Padding(
          padding: const EdgeInsets.fromLTRB(32, 20, 0, 10),
          child: Text('Contribute Title',style: TextStyle(fontWeight: FontWeight.bold),),
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
              hintText: 'Enter contribut title',
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
                    child: Text('Contribute Detail',style: TextStyle(fontWeight: FontWeight.bold),),
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

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 20, 0, 10),
                    child: Text('Choose Files',style: TextStyle(fontWeight: FontWeight.bold),),
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
            padding: EdgeInsets.fromLTRB(32, 10, 32, 2),
            child: FlatButton(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Submit'.toUpperCase(),
                  style: TextStyle(color: Colors.white, fontSize: 16),),
              ),
              color: colors.headerColor,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
              ),
              onPressed: () {},
            ),
          ),
        ],
      )
    );
  }
}
