import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:samiksha/main.dart';
import 'package:samiksha/colors.dart' as colors;
import 'package:samiksha/pages/checkout.dart';

class CartPage extends StatelessWidget {
final int navFlag;

  const CartPage({Key key, this.navFlag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: colors.headerColor,
        title:Text('My Cart'),
      ),
      drawer:(navFlag==1)? MyDrawer() : null,
      body:Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(itemCount:6,itemBuilder: (BuildContext context,int index){
              return Container(
                child: cartItems(index),
              );
            },
            ),
          ),
          couponCode(),
          SizedBox(
            height: 6,
          ),
          checkoutSection(),
        ],
      )
    );
  }
}

Widget cartItems(int index){
  return Container(
    height: 130,
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              height: 100,
              width: 130,
              child: Image.asset(
                'images/product/1.jpg'),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Flexible(
                          child: Text('Medical Book',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:colors.titleColor),),

                        ),
                        Container(
                          width: 50,
                          child: IconButton(
                            onPressed: (){},
                            color: Colors.red,
                            icon: Icon(FontAwesomeIcons.trashAlt,size: 16,color: Colors.redAccent,),
                          ),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    Row(
                      children: <Widget>[
                        Text('Medical Science',style: TextStyle(color: Colors.black26 ,fontSize: 15),),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('\$200',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        Spacer(),
                        Row(
                          children: <Widget>[
                            InkWell(
                              splashColor: Colors.redAccent,
                              onTap: (){},
                              child: Container(
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Card(
                              color: Colors.grey,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10,4,10,4),
                                child: Text('3',style: TextStyle(color: Colors.white),),
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            InkWell(
                              splashColor: Colors.greenAccent,
                              onTap: (){},
                              child: Container(
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),


                  ],
                ),
              ),
            ),
          ],
        ),
        Divider(color:Colors.black26),
      ],
    ),

  );
}

Widget couponCode(){
  return Material(
    color:Colors.black12,
    child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 4, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Coupon Code',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
              IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.check_circle,color: colors.headerColor,
                ),
              )
            ],
          ),
        ),
      ],
    ),

  );
}
class checkoutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.black12,
      child:Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(16,10,16,10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Sub Total :',style: TextStyle(fontSize: 14),),
                    Text('You will save :',style: TextStyle(fontSize: 14),),
                    Text(' Total :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text('Rs. 5000',style: TextStyle(fontSize: 14),),
                    Text('Rs. 500',style: TextStyle(fontSize: 14),),
                    Text('Rs. 4500',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16,0,16,10),
            child: Material(
              color:colors.headerColor,
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>CheckoutPage()));
                },
                child: Container(
                  width: double.infinity,

                  child: Padding(
                    padding: const EdgeInsets.all(10.0),

                    child: Text(
                      'Check Out',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),

    );
  }
}
