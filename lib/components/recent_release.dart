import 'package:flutter/material.dart';
import 'package:samiksha/colors.dart' as colors;
import 'package:samiksha/pages/cart.dart';
import 'package:samiksha/pages/product_detail.dart';
import 'package:samiksha/pages/wishlist.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>ProductDetail()));
                      },
                      child:Image.asset('images/product/1.jpg'),
                    ),
                    SizedBox(height: 10,),
                    Text('Fast Text Clinical book', style: TextStyle(
                        fontWeight: FontWeight.bold, color: colors.titleColor)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                          color: colors.dashboardColor,
                          child: Padding(
                            padding: new EdgeInsets.fromLTRB(15, 5, 15, 5),
                            child: Text('NRs. 2,000'),
                          ),
                        ),
                        InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>CartPage()));
                              },
                            child: Icon(
                              Icons.shopping_cart, color: colors.dIconColor,)),
                        InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>WishlistPage()));
                            },
                            child: Icon(Icons.favorite_border,
                              color: colors.dIconColor,)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>ProductDetail()));
                      },
                      child:Image.asset('images/product/2.jpg'),
                    ),
                    SizedBox(height: 10,),
                    Text('Easy engineering', style: TextStyle(
                        fontWeight: FontWeight.bold, color: colors.titleColor)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                          color: colors.dashboardColor,
                          child: Padding(
                            padding: new EdgeInsets.fromLTRB(15, 5, 15, 5),
                            child: Text('NRs. 2,000'),
                          ),
                        ),
                        InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>CartPage()));
                            },
                            child: Icon(
                              Icons.shopping_cart, color: colors.dIconColor,)),
                        InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>WishlistPage()));
                            },
                            child: Icon(Icons.favorite_border,
                              color: colors.dIconColor,)),
                      ],
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>ProductDetail()));
                        },
                        child:Image.asset('images/product/1.jpg'),
                      ),
                      SizedBox(height: 10,),
                      Text('Fast Text Clinical book', style: TextStyle(
                          fontWeight: FontWeight.bold, color: colors.titleColor)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                            color: colors.dashboardColor,
                            child: Padding(
                              padding: new EdgeInsets.fromLTRB(15, 5, 15, 5),
                              child: Text('NRs. 2,000'),
                            ),
                          ),
                          InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>CartPage()));
                              },
                              child: Icon(
                                Icons.shopping_cart, color: colors.dIconColor,)),
                          InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>WishlistPage()));
                              },
                              child: Icon(Icons.favorite_border,
                                color: colors.dIconColor,)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>ProductDetail()));
                        },
                        child:Image.asset('images/product/2.jpg'),
                      ),
                      SizedBox(height: 10,),
                      Text('Easy engineering', style: TextStyle(
                          fontWeight: FontWeight.bold, color: colors.titleColor)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                            color: colors.dashboardColor,
                            child: Padding(
                              padding: new EdgeInsets.fromLTRB(15, 5, 15, 5),
                              child: Text('NRs. 2,000'),
                            ),
                          ),
                          InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>CartPage()));
                              },
                              child: Icon(
                                Icons.shopping_cart, color: colors.dIconColor,)),
                          InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>WishlistPage()));
                              },
                              child: Icon(Icons.favorite_border,
                                color: colors.dIconColor,)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),

      ],
    );

  }
}
