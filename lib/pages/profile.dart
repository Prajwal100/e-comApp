import 'package:flutter/material.dart';
import 'package:samiksha/main.dart';
import 'package:samiksha/colors.dart' as colors;

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: colors.headerColor,
          title:Text('Sandhya'),
          actions: <Widget>[
            IconButton(
              onPressed:(){},
              icon:Icon(Icons.shopping_cart)
            )
          ],
        ),
        drawer: MyDrawer(),
        body:ListView(
          children: <Widget>[
             Container(
              height: 150,
              color: colors.headerColor,
               child: Center(
                 child: Container(
                 height:100,
                   width: 100,
                   child: CircleAvatar(
                     backgroundImage: AssetImage('images/agent-2.jpg'),
                   ),
                 ),
               ),
            ),
            Column(
              children: <Widget>[

                InkWell(
                    onTap: () {
//                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new HomePage()));
                    },
                    child: ListTile(
                      title: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                child: Icon(Icons.edit,
                                 color:colors.headerColor,
                                 size: 20,),
                                padding: EdgeInsets.fromLTRB(0,0,8,0),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('Edit profile',
                                  style: TextStyle(
                                      color: colors.headerColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
//                      leading: Icon(
//                        Icons.edit,
//                        color:colors.headerColor,
//                        size: 20,
//                      ),
                      trailing: Icon(
                        Icons.arrow_forward,
                        color:colors.headerColor,
                        size: 20,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,0,0,0),
                  child: Divider(color:colors.titleColor),
                ),
                InkWell(
                    onTap: () {
//                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new HomePage()));
                    },
                    child: ListTile(
                      title: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                child: Icon(Icons.location_on,
                                 color:colors.headerColor,
                                 size: 20,),
                                padding: EdgeInsets.fromLTRB(0,0,8,0),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('Address',
                                  style: TextStyle(
                                      color: colors.headerColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
//                      leading: Icon(
//                        Icons.edit,
//                        color:colors.headerColor,
//                        size: 20,
//                      ),
                      trailing: Icon(
                        Icons.arrow_forward,
                        color:colors.headerColor,
                        size: 20,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,0,0,0),
                  child: Divider(color:colors.titleColor),
                ),
                InkWell(
                    onTap: () {
//                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new HomePage()));
                    },
                    child: ListTile(
                      title: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                child: Icon(Icons.lock_open,
                                 color:colors.headerColor,
                                 size: 20,),
                                padding: EdgeInsets.fromLTRB(0,0,8,0),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('Change password',
                                  style: TextStyle(
                                      color: colors.headerColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
//                      leading: Icon(
//                        Icons.edit,
//                        color:colors.headerColor,
//                        size: 20,
//                      ),
                      trailing: Icon(
                        Icons.arrow_forward,
                        color:colors.headerColor,
                        size: 20,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,0,0,0),
                  child: Divider(color:colors.titleColor),
                ),
                InkWell(
                    onTap: () {
//                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new HomePage()));
                    },
                    child: ListTile(
                      title: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                child: Icon(Icons.payment,
                                 color:colors.headerColor,
                                 size: 20,),
                                padding: EdgeInsets.fromLTRB(0,0,8,0),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('Payment',
                                  style: TextStyle(
                                      color: colors.headerColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
//                      leading: Icon(
//                        Icons.edit,
//                        color:colors.headerColor,
//                        size: 20,
//                      ),
                      trailing: Icon(
                        Icons.arrow_forward,
                        color:colors.headerColor,
                        size: 20,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,0,0,0),
                  child: Divider(color:colors.titleColor),
                ),
                InkWell(
                    onTap: () {
//                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new HomePage()));
                    },
                    child: ListTile(
                      title: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                child: Icon(Icons.group_add,
                                 color:colors.headerColor,
                                 size: 20,),
                                padding: EdgeInsets.fromLTRB(0,0,8,0),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('Invite friends',
                                  style: TextStyle(
                                      color: colors.headerColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
//                      leading: Icon(
//                        Icons.edit,
//                        color:colors.headerColor,
//                        size: 20,
//                      ),
                      trailing: Icon(
                        Icons.arrow_forward,
                        color:colors.headerColor,
                        size: 20,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,0,0,0),
                  child: Divider(color:colors.titleColor),
                ),
                InkWell(
                    onTap: () {
//                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new HomePage()));
                    },
                    child: ListTile(
                      title: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                child: Icon(Icons.reorder,
                                 color:colors.headerColor,
                                 size: 20,),
                                padding: EdgeInsets.fromLTRB(0,0,8,0),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('My orders',
                                  style: TextStyle(
                                      color: colors.headerColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
//                      leading: Icon(
//                        Icons.edit,
//                        color:colors.headerColor,
//                        size: 20,
//                      ),
                      trailing: Icon(
                        Icons.arrow_forward,
                        color:colors.headerColor,
                        size: 20,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,0,0,0),
                  child: Divider(color:colors.titleColor),
                ),
                InkWell(
                    onTap: () {
//                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new HomePage()));
                    },
                    child: ListTile(
                      title: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                child: Icon(Icons.redeem,
                                 color:colors.headerColor,
                                 size: 20,),
                                padding: EdgeInsets.fromLTRB(0,0,8,0),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('Recommended products',
                                  style: TextStyle(
                                      color: colors.headerColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
//                      leading: Icon(
//                        Icons.edit,
//                        color:colors.headerColor,
//                        size: 20,
//                      ),
                      trailing: Icon(
                        Icons.arrow_forward,
                        color:colors.headerColor,
                        size: 20,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,0,0,0),
                  child: Divider(color:colors.titleColor),
                ),
                InkWell(
                    onTap: () {
//                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new HomePage()));
                    },
                    child: ListTile(
                      title: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                child: Icon(Icons.help_outline,
                                  color:colors.headerColor,
                                  size: 20,),
                                padding: EdgeInsets.fromLTRB(0,0,8,0),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('Help',
                                  style: TextStyle(
                                      color: colors.headerColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
//                      leading: Icon(
//                        Icons.edit,
//                        color:colors.headerColor,
//                        size: 20,
//                      ),
                      trailing: Icon(
                        Icons.arrow_forward,
                        color:colors.headerColor,
                        size: 20,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,0,0,0),
                  child: Divider(color:colors.titleColor),
                ),

              ],
            )
          ],
        ),
        
    );
  }
}
