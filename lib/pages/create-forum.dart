import 'package:flutter/material.dart';
import 'package:samiksha/main.dart';
import 'package:samiksha/colors.dart' as colors;

class CreateForum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: colors.headerColor,
        title:Text('Create Forum'),
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
                    child: Text('Forum Title',style: TextStyle(fontWeight: FontWeight.bold),),
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
                    child: Text('Forum Detail',style: TextStyle(fontWeight: FontWeight.bold),),
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
                    child: Text('Category Name',style: TextStyle(fontWeight: FontWeight.bold),),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:32.0),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      hint: Text('Please choose any category'),
                      items: <String>['Medical Science', 'Mechanical Engineering', 'Computer Science', 'Biology Science'].map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    )
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
                    padding: const EdgeInsets.symmetric(horizontal:16.0),
                    child: SwitchListTile(
                    title: Text(
                    'Show your name',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
                    ),
                    value: true,
                    onChanged: (val) {},
                    ),
                  )
                ],
              )
            ],
          ),

          Container(
            padding: EdgeInsets.fromLTRB(32,10,32,2),
            child: FlatButton(
              shape: new RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Post Topic'.toUpperCase(),style: TextStyle(color: Colors.white,fontSize: 16),),
              ),
              color: colors.headerColor,
              onPressed: (){},
            ),
          ),

        ],
      )
    );
  }
}
