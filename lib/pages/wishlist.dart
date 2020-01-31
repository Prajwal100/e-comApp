import 'package:flutter/material.dart';
import 'package:samiksha/main.dart';
import 'package:samiksha/colors.dart' as colors;
import 'package:samiksha/pages/cart.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
class WishlistPage extends StatelessWidget {
  final int navFlag;

  const WishlistPage({Key key, this.navFlag}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: colors.headerColor,
          title:Text('Wishlist'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart,color: Colors.white,),
              onPressed: (){
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>CartPage()));
              },
            )
          ],
        ),
        drawer:(navFlag==1)? MyDrawer() : null,
        body: Align(
          alignment: Alignment.topCenter,
          child: wishlistItems(),
        )
    );
  }
}

class wishlistItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Slidable(
          actionPane: SlidableDrawerActionPane(),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white
            ),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5,vertical:8),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(
                      'images/product/1.jpg',fit: BoxFit.fitHeight,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Engineering Books',style: TextStyle(color: colors.titleColor,fontSize: 16,fontWeight: FontWeight.bold),),
                      Text('Mechanical',style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.bold),),
                      Text('\$200',style: TextStyle(color: colors.titleColor,fontSize: 15,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

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
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10,4,10,4),
                      child: Text('3',style: TextStyle(color: Colors.black),),
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
                        color: colors.headerColor,
                      ),
                    ),
                  )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        splashColor: Colors.redAccent,
                        onTap: (){},
                        child: Container(
                          child: Icon(
                            Icons.check_circle_outline,
                            color: colors.headerColor,
                          ),
                        ),
                      ),

                      InkWell(
                        splashColor: Colors.greenAccent,
                        onTap: (){},
                        child: Container(
                          child: Icon(
                            Icons.share,
                            color: colors.dIconColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

          ),
          secondaryActions: <Widget>[
            IconSlideAction(
              color: Colors.redAccent,
              icon: Icons.delete_forever,
              onTap: () {},
            ),
          ],

        );

      }
    );

  }
}
