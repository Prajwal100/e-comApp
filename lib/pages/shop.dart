import 'package:flutter/material.dart';
import 'package:samiksha/main.dart';
import 'package:samiksha/colors.dart' as colors;
import 'package:samiksha/pages/cart.dart';
import 'package:samiksha/pages/product_detail.dart';
class ShopPage extends StatelessWidget {
  final int navFlag;

  const ShopPage({Key key, this.navFlag}) : super(key: key);
//  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: colors.headerColor,
        title: new Text('Shop'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: (){
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>CartPage()));
            },
          )
        ],
      ),
      drawer: (navFlag==1)? MyDrawer() : null,
      body:Container(
        color: colors.dashboardColor,
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
//                Padding(
//                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 0),
//                  child: Text('Categories',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
//                ),
                Container(
                    width: double.infinity,
                    height: 125,
                    child:ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (BuildContext context,int index){
                          return categoryList(context);
                        })
                ),
//                Trending Products
                Container(
                  width: double.infinity,
                  color: colors.dIconColor,
                  height: 50.0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical:12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Trending Products',style: TextStyle(color: Colors.white,fontSize: 16),),
                        InkWell(
                          onTap: (){},
                          child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                                child: Text('View All',style: TextStyle(color: Colors.white),),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
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
                                      child: Text('Easy medical',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:colors.titleColor),),

                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text('\$200',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0,0,20,0),
                                      child: InkWell(
                                        onTap: (){},
                                        child: Icon(
                                            Icons.favorite_border,
                                          color:Colors.grey
                                        ),
                                      ),
                                    ),

                                    InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>ProductDetail()));
                                      },
                                      child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                                          color: colors.headerColor,
                                          child: Text('Shop',style: TextStyle(color: Colors.white),)),
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
                                      child: Text('Product1',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:colors.titleColor),),

                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text('\$200',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0,0,20,0),
                                      child: InkWell(
                                        onTap: (){},
                                        child: Icon(
                                            Icons.favorite_border,
                                            color:Colors.grey

                                        ),
                                      ),
                                    ),

                                    InkWell(
                                      onTap: (){},
                                      child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                                          color: colors.headerColor,
                                          child: Text('Shop',style: TextStyle(color: Colors.white),)),
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
                                      child: Text('Product1',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:colors.titleColor),),

                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text('\$200',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0,0,20,0),
                                      child: InkWell(
                                        onTap: (){},
                                        child: Icon(
                                            Icons.favorite_border,
                                            color:Colors.grey

                                        ),
                                      ),
                                    ),

                                    InkWell(
                                      onTap: (){},
                                      child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                                          color: colors.headerColor,
                                          child: Text('Shop',style: TextStyle(color: Colors.white),)),
                                    )
                                  ],
                                ),


                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

//                Recent Products
                Container(
                  width: double.infinity,
                  color: colors.dIconColor,
                  height: 50.0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical:12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Recent Products',style: TextStyle(color: Colors.white,fontSize: 16),),
                        InkWell(
                          onTap: (){},
                          child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                                child: Text('View All',style: TextStyle(color: Colors.white),),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
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
                                      child: Text('Easy medical',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:colors.titleColor),),

                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text('\$200',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0,0,20,0),
                                      child: InkWell(
                                        onTap: (){},
                                        child: Icon(
                                            Icons.favorite_border,
                                            color: Colors.grey,
                                        ),
                                      ),
                                    ),

                                    InkWell(
                                      onTap: (){},
                                      child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                                          color: colors.headerColor,
                                          child: Text('Shop',style: TextStyle(color: Colors.white),)),
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
                                      child: Text('Easy medical',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:colors.titleColor),),

                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text('\$200',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0,0,20,0),
                                      child: InkWell(
                                        onTap: (){},
                                        child: Icon(
                                          Icons.favorite_border,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),

                                    InkWell(
                                      onTap: (){},
                                      child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                                          color: colors.headerColor,
                                          child: Text('Shop',style: TextStyle(color: Colors.white),)),
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
                                      child: Text('Easy medical',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:colors.titleColor),),

                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text('\$200',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0,0,20,0),
                                      child: InkWell(
                                        onTap: (){},
                                        child: Icon(
                                          Icons.favorite_border,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),

                                    InkWell(
                                      onTap: (){},
                                      child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                                          color: colors.headerColor,
                                          child: Text('Shop',style: TextStyle(color: Colors.white),)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
Widget categoryList(BuildContext context){
  return InkWell(
    onTap: (){},
    child: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(8),
          height: 80,
          width: 80,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
                border: Border.all(color:colors.headerColor)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'images/product/1.jpg'
              ),
            ),
          ),
        ),
        Text('Category 1'),
      ],
    ),
  );
}
