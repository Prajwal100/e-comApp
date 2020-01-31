import 'package:flutter/material.dart';
import 'package:samiksha/colors.dart' as colors;
import 'package:samiksha/main.dart';
import 'package:samiksha/pages/create-forum.dart';

class ForumPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length:2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor:colors.headerColor,
            bottom: TabBar(
              tabs: [
                Tab( child: Text('All Forum'),),
                Tab( child: Text('Your Forum'),),
              ],
            ),
            title: Text('Forum'),
            actions: <Widget>[
              IconButton(
                onPressed: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>CreateForum()));
                },
                icon: Icon(
                  Icons.add_circle_outline,color: Colors.white,
                ),
              )
            ],
          ),
          body: TabBarView(
            children: [
              ListView(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                    height:80,
                                    width:80,
                                    child:CircleAvatar(
                                      backgroundImage:  AssetImage('images/product/1.jpg'),
                                    )

                                )
                              ],
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10,0,0,0),
                                    child: Text('Rolling Test is an online based adaptive intellectual test?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color:colors.titleColor),),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text:'By : ',
                                                style:TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold
                                                )
                                            ),
                                            TextSpan(
                                                text: "Prajwal R.",
                                                style: TextStyle(
                                                    color:colors.headerColor,
                                                    fontStyle: FontStyle.italic
                                                )
                                            )
                                          ]
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text:'By : ',
                                                style:TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold
                                                )
                                            ),
                                            TextSpan(
                                                text:'Medical Science',
                                                style:TextStyle(
                                                    color:colors.headerColor,
                                                    fontStyle: FontStyle.italic
                                                )
                                            ),
                                          ]
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.thumb_up,size: 18,),
                                  ),
                                  Text('20',style: TextStyle(color: colors.headerColor,fontWeight: FontWeight.bold,fontSize: 14),)
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.remove_red_eye,size: 18,),
                                  ),
                                  Text('15',style: TextStyle(color: colors.headerColor,fontWeight: FontWeight.bold,fontSize: 14),)
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.comment,size: 18,),
                                  ),
                                  Text('20',style: TextStyle(color: colors.headerColor,fontWeight: FontWeight.bold,fontSize: 14),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color:Colors.grey.withOpacity(.2),
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                    height:80,
                                    width:80,
                                    child:CircleAvatar(
                                      backgroundImage:  AssetImage('images/product/1.jpg'),
                                    )

                                )
                              ],
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10,0,0,0),
                                    child: Text('Rolling Test is an online based adaptive intellectual test?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color:colors.titleColor),),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text:'By : ',
                                                style:TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold
                                                )
                                            ),
                                            TextSpan(
                                                text: "Prajwal R.",
                                                style: TextStyle(
                                                    color:colors.headerColor,
                                                    fontStyle: FontStyle.italic
                                                )
                                            )
                                          ]
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text:'By : ',
                                                style:TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold
                                                )
                                            ),
                                            TextSpan(
                                                text:'Medical Science',
                                                style:TextStyle(
                                                    color:colors.headerColor,
                                                    fontStyle: FontStyle.italic
                                                )
                                            ),
                                          ]
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.thumb_up,size: 18,),
                                  ),
                                  Text('20',style: TextStyle(color: colors.headerColor,fontWeight: FontWeight.bold,fontSize: 14),)
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.remove_red_eye,size: 18,),
                                  ),
                                  Text('15',style: TextStyle(color: colors.headerColor,fontWeight: FontWeight.bold,fontSize: 14),)
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.comment,size: 18,),
                                  ),
                                  Text('20',style: TextStyle(color: colors.headerColor,fontWeight: FontWeight.bold,fontSize: 14),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                    height:80,
                                    width:80,
                                    child:CircleAvatar(
                                      backgroundImage:  AssetImage('images/product/1.jpg'),
                                    )

                                )
                              ],
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10,0,0,0),
                                    child: Text('Rolling Test is an online based adaptive intellectual test?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color:colors.titleColor),),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text:'By : ',
                                                style:TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold
                                                )
                                            ),
                                            TextSpan(
                                                text: "Prajwal R.",
                                                style: TextStyle(
                                                    color:colors.headerColor,
                                                    fontStyle: FontStyle.italic
                                                )
                                            )
                                          ]
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text:'By : ',
                                                style:TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold
                                                )
                                            ),
                                            TextSpan(
                                                text:'Medical Science',
                                                style:TextStyle(
                                                    color:colors.headerColor,
                                                    fontStyle: FontStyle.italic
                                                )
                                            ),
                                          ]
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.thumb_up,size: 18,),
                                  ),
                                  Text('20',style: TextStyle(color: colors.headerColor,fontWeight: FontWeight.bold,fontSize: 14),)
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.remove_red_eye,size: 18,),
                                  ),
                                  Text('15',style: TextStyle(color: colors.headerColor,fontWeight: FontWeight.bold,fontSize: 14),)
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.comment,size: 18,),
                                  ),
                                  Text('20',style: TextStyle(color: colors.headerColor,fontWeight: FontWeight.bold,fontSize: 14),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),



                ],
              ),
              ListView(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                    height:80,
                                    width:80,
                                    child:CircleAvatar(
                                      backgroundImage:  AssetImage('images/product/1.jpg'),
                                    )

                                )
                              ],
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10,0,0,0),
                                    child: Text('Rolling Test is an online based adaptive intellectual test?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color:colors.titleColor),),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text:'By : ',
                                                style:TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold
                                                )
                                            ),
                                            TextSpan(
                                                text: "Prajwal R.",
                                                style: TextStyle(
                                                    color:colors.headerColor,
                                                    fontStyle: FontStyle.italic
                                                )
                                            )
                                          ]
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text:'By : ',
                                                style:TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold
                                                )
                                            ),
                                            TextSpan(
                                                text:'Medical Science',
                                                style:TextStyle(
                                                    color:colors.headerColor,
                                                    fontStyle: FontStyle.italic
                                                )
                                            ),
                                          ]
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.thumb_up,size: 18,),
                                  ),
                                  Text('20',style: TextStyle(color: colors.headerColor,fontWeight: FontWeight.bold,fontSize: 14),)
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.remove_red_eye,size: 18,),
                                  ),
                                  Text('15',style: TextStyle(color: colors.headerColor,fontWeight: FontWeight.bold,fontSize: 14),)
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.comment,size: 18,),
                                  ),
                                  Text('20',style: TextStyle(color: colors.headerColor,fontWeight: FontWeight.bold,fontSize: 14),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color:Colors.grey.withOpacity(.2),
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                    height:80,
                                    width:80,
                                    child:CircleAvatar(
                                      backgroundImage:  AssetImage('images/product/1.jpg'),
                                    )

                                )
                              ],
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10,0,0,0),
                                    child: Text('Rolling Test is an online based adaptive intellectual test?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color:colors.titleColor),),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text:'By : ',
                                                style:TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold
                                                )
                                            ),
                                            TextSpan(
                                                text: "Prajwal R.",
                                                style: TextStyle(
                                                    color:colors.headerColor,
                                                    fontStyle: FontStyle.italic
                                                )
                                            )
                                          ]
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text:'By : ',
                                                style:TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold
                                                )
                                            ),
                                            TextSpan(
                                                text:'Medical Science',
                                                style:TextStyle(
                                                    color:colors.headerColor,
                                                    fontStyle: FontStyle.italic
                                                )
                                            ),
                                          ]
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.thumb_up,size: 18,),
                                  ),
                                  Text('20',style: TextStyle(color: colors.headerColor,fontWeight: FontWeight.bold,fontSize: 14),)
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.remove_red_eye,size: 18,),
                                  ),
                                  Text('15',style: TextStyle(color: colors.headerColor,fontWeight: FontWeight.bold,fontSize: 14),)
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.comment,size: 18,),
                                  ),
                                  Text('20',style: TextStyle(color: colors.headerColor,fontWeight: FontWeight.bold,fontSize: 14),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                    height:80,
                                    width:80,
                                    child:CircleAvatar(
                                      backgroundImage:  AssetImage('images/product/1.jpg'),
                                    )

                                )
                              ],
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10,0,0,0),
                                    child: Text('Rolling Test is an online based adaptive intellectual test?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color:colors.titleColor),),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text:'By : ',
                                                style:TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold
                                                )
                                            ),
                                            TextSpan(
                                                text: "Prajwal R.",
                                                style: TextStyle(
                                                    color:colors.headerColor,
                                                    fontStyle: FontStyle.italic
                                                )
                                            )
                                          ]
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text:'By : ',
                                                style:TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold
                                                )
                                            ),
                                            TextSpan(
                                                text:'Medical Science',
                                                style:TextStyle(
                                                    color:colors.headerColor,
                                                    fontStyle: FontStyle.italic
                                                )
                                            ),
                                          ]
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.thumb_up,size: 18,),
                                  ),
                                  Text('20',style: TextStyle(color: colors.headerColor,fontWeight: FontWeight.bold,fontSize: 14),)
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.remove_red_eye,size: 18,),
                                  ),
                                  Text('15',style: TextStyle(color: colors.headerColor,fontWeight: FontWeight.bold,fontSize: 14),)
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.comment,size: 18,),
                                  ),
                                  Text('20',style: TextStyle(color: colors.headerColor,fontWeight: FontWeight.bold,fontSize: 14),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),



                ],
              ),
            ],
          ),
        ),
    );
  }
}