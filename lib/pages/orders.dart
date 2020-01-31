import 'package:flutter/material.dart';
import 'package:samiksha/main.dart';
import 'package:samiksha/colors.dart' as colors;
import 'package:samiksha/pages/cart.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: colors.headerColor,
          title:Text('Orders'),
          actions: <Widget>[
            IconButton(
              onPressed:(){
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>CartPage()));
              },
              icon: Icon(
                Icons.shopping_cart,
                color:Colors.white
              ),
            )
          ],
        ),
        drawer: MyDrawer(),
        body:Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder( itemCount:6,itemBuilder: (context,int index){
                return Container(
                  child: orderItem(index,context),
                );
              }),
            )
          ],
        )
    );
  }
}

Widget orderItem(int index,BuildContext context){
  return Container(
    height: 150,
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            ClipRRect(
              child: Container(
                height: 130,
                width: 130,

                child: Image.asset(
                  'images/product/1.jpg',
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Fast Track Clinical Science',style: TextStyle(color:colors.titleColor,fontWeight: FontWeight.bold,fontSize: 16),),
                            Container(
                              padding: const EdgeInsets.fromLTRB(10,1,6,1),
                                decoration: BoxDecoration(
                                  border:Border.all(color: Colors.green),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Text('In Progress ',style: TextStyle(color:Colors.green,fontSize: 10),)),
                            Text('3, Jan 2020',style: TextStyle(color:Colors.grey,fontWeight: FontWeight.w600,fontSize: 12),),

                            FlatButton(
                              padding: EdgeInsets.fromLTRB(14, 0, 14, 0),
                              onPressed: (){
                                showAlertDialog(context);
                              },
                              color: colors.headerColor,
                              splashColor: Colors.grey,
                              child: Text('View Details',style: TextStyle(color: Colors.white),),

                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        Divider(color: Colors.black26,)

      ],
    ),
  );
}

showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = FlatButton(
    child: Container(
        decoration: BoxDecoration(
          color: Colors.green,

          borderRadius: BorderRadius.circular(6),
        ),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Text("OK", style: TextStyle(color: Colors.white),)),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 200,
                child: Image.asset('images/product/1.jpg',fit: BoxFit.cover,),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("Fast track clinical",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.fromLTRB(10,1,6,1),
                          decoration: BoxDecoration(
                              border:Border.all(color: Colors.green),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Text('In Progress ',style: TextStyle(color:Colors.green,fontSize: 10),)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text("Medical Science",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color:Colors.grey),),
                      ),
                    ],
                  ),

                ],
              ),

              Row(
                children: <Widget>[
                  Text("Quantity : 4",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.grey),),
                ],
              ),  Row(
                children: <Widget>[
                  Text("Price : Rs. 10,000",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.grey),),
                ],
              ),
            ],
          )
        ],
      ),
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}