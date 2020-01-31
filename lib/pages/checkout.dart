import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:samiksha/main.dart';
import 'package:samiksha/colors.dart' as colors;

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: colors.headerColor,
        title:Text('Checkout'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('Delivery Address',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                margin: EdgeInsets.fromLTRB(16,0,16,0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.withOpacity(.2),

                                  ),
                                child:Column(
                                  children: <Widget>[
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: <Widget>[
                                                  Text('Prajwal Rai',style: TextStyle(color:colors.titleColor,fontSize: 16),),
                                                  IconButton(
                                                    onPressed: (){},
                                                    icon: Icon(FontAwesomeIcons.edit,size: 18,color:colors.headerColor),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.fromLTRB(0,0,0,10),
                                                child: Text('9809009989',style: TextStyle(color:colors.titleColor,fontSize: 16),),
                                              ),
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Icon(Icons.location_on,color: colors.headerColor,size: 18,),
                                                  Expanded(child: Text('Bijulibazzar Bagmati, Kathmandu Metro 10 - New Baneshwor Area, Buddhanagar',style: TextStyle(color:colors.titleColor,fontSize: 14),))
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Text('Delivery Address',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 12),),
                                                  IconButton(
                                                    icon: Icon(
                                                      Icons.check_circle_outline,color: colors.headerColor,size: 20,
                                                    ),
                                                  )
                                                ],
                                              )

                                            ],
                                          ),
                                        ),
//                                    IconButton(
//                                      onPressed: (){},
//                                      icon: Icon(Icons.edit,color: colors.headerColor,size: 18,),
//                                    )
                                      ],
                                    ),
                                  ],
                                )
                              ),
                              Container(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                margin: EdgeInsets.fromLTRB(16,0,16,0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.withOpacity(.2),

                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    IconButton(
                                        icon:Icon(Icons.add),
                                      onPressed: (){},
                                    )
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('Payment Methods',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                          Center(
                            child: Container(
//                        color: Colors.red,
                              height: 100,
                              decoration: BoxDecoration(
                              color: colors.headerColor,
                              borderRadius:BorderRadius.circular(10)
                              ),
                              width: 320,
                              margin:EdgeInsets.fromLTRB(20,0,20,20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Text('Cash On Delivery',style: TextStyle(color: Colors.white,fontSize: 16),),
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                     IconButton(
                                       icon: Icon(Icons.check_circle,color: Colors.white,),
                                     )
                                    ],
                                  ),
                                ],
                              ),

                            ),
                          )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                          Center(
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:BorderRadius.circular(10)
                              ),
                              width: 320,
                              margin:EdgeInsets.fromLTRB(20,0,20,0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Text('Cash On Delivery',style: TextStyle(color:colors.titleColor,fontSize: 16),),
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                     IconButton(
                                       icon: Icon(FontAwesomeIcons.circle,color: colors.titleColor,size: 20,),
                                     )
                                    ],
                                  ),
                                ],
                              ),

                            ),
                          )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                          Center(
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:BorderRadius.circular(10)
                              ),
                              width: 320,
                              margin:EdgeInsets.fromLTRB(20,20,20,0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Text('e-sewa or Fone Pay',style: TextStyle(color:colors.titleColor,fontSize: 16),),
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                     IconButton(
                                       icon: Icon(FontAwesomeIcons.circle,color: colors.titleColor,size: 20,),
                                     )
                                    ],
                                  ),
                                ],
                              ),

                            ),
                          )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.crop_square),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                           Text('I agree the Terms and Conditions')
                          ],
                        ),
                      ],
                    ),


                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0,10,16,20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                          children:[
                            TextSpan(
                                text:'Total : ',
                                style: TextStyle(color:colors.titleColor,fontWeight: FontWeight.bold,fontSize: 18)
                            ),
                            TextSpan(
                                text: 'Rs. 30,000',
                                style: TextStyle(color:colors.titleColor)
                            )
                          ]
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: colors.dIconColor,

                      ),
                      child: FlatButton(
                        onPressed: (){},
                        child: Text('Proceed',style: TextStyle(color:Colors.white,fontSize: 18),),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

        ],
      )
    );
  }
}
