import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:samiksha/colors.dart' as colors;
class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    Widget image_carousel=new Container(
      height: 200,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images:[
          AssetImage('images/product/1.jpg'),
          AssetImage('images/product/2.jpg'),
          AssetImage('images/product/3.jpg'),
        ],
        autoplay: false,
        dotSize: 6,
        indicatorBgPadding: 10,
        dotIncreasedColor:colors.dIconColor ,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical Science'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          )
        ],
      ),
      body:Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[

                Container(
                  child: image_carousel,
                ),
                Divider(color: colors.titleColor,),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.add_circle,color: colors.titleColor,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6),
                              child: Text('Details',style: TextStyle(color: colors.titleColor,fontWeight: FontWeight.bold,fontSize: 16),),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text('\$500',style: TextStyle(color: colors.titleColor,fontWeight: FontWeight.bold,fontSize: 16),)
                          ],
                        ),
                      ],
                  ),
                ),
                Divider(color: colors.titleColor,),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
                  child: Text(
                    'But I’ll go on and add a “Recipe” controller with its model. A recipe will be composed of many ingredients, each with a quantity. I can represent this with the following schema '
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:130),
                  child: FlatButton(
                    splashColor: colors.headerColor.withOpacity(.4),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: BorderSide(color: colors.headerColor)),
                    onPressed: (){},
                    child: Text('View ALl',style: TextStyle(fontWeight: FontWeight.w600,color: colors.headerColor),),
                  ),
                ),

                Divider(color: colors.titleColor,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.add_circle,color: colors.titleColor,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: Text('Features',style: TextStyle(color: colors.titleColor,fontWeight: FontWeight.bold,fontSize: 16),),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(color: colors.titleColor,),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,0,6),
                            child: Text('Quantity',style: TextStyle(color: colors.titleColor,fontWeight: FontWeight.bold,fontSize: 12),),
                          ),
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
                                color: Colors.white70,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(10,4,10,4),
                                  child: Text('3',style: TextStyle(color: Colors.black54),),
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
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,0,6),
                            child: Text('Rating',style: TextStyle(color: colors.titleColor,fontWeight: FontWeight.bold,fontSize: 12),),
                          ),
                          Row(
                            children: <Widget>[
                             Icon(Icons.star,size: 12,color: colors.dIconColor,),
                             Icon(Icons.star,size: 12,color: colors.dIconColor,),
                             Icon(Icons.star,size: 12,color: colors.dIconColor,),
                             Icon(Icons.star,size: 12,color: colors.dIconColor,),
                             Icon(Icons.star_border,size: 12,color: colors.titleColor,),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    FlatButton(
                      splashColor: colors.headerColor.withOpacity(.4),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4),side: BorderSide(color: colors.headerColor)),
                      onPressed: (){},
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Icon(Icons.favorite_border,color: colors.headerColor,),
                            padding: EdgeInsets.fromLTRB(0,0,6,0),
                          ),
                          Text('Favorite',style: TextStyle(fontWeight: FontWeight.w600,color: colors.headerColor),),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    FlatButton(
                      splashColor: colors.headerColor.withOpacity(.4),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4),side: BorderSide(color: colors.dIconColor)),
                      onPressed: (){},
                      color: colors.dIconColor,
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Icon(Icons.add_shopping_cart,color: Colors.white,),
                            padding: EdgeInsets.fromLTRB(0,0,6,0),
                          ),
                          Text('Add to cart',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white),),
                        ],
                      ),
                    ),
//                    Container(
//                      padding: EdgeInsets.symmetric(horizontal: 6,vertical: 4),
//                      decoration: BoxDecoration(
//                        border:Border.all(color: colors.titleColor),
//                        borderRadius: BorderRadius.circular(4)
//                      ),
//                      child:Row(
//                        children: <Widget>[
//                   Icon(Icons.favorite_border,color: colors.titleColor,),
//                    Padding(
//                      padding: const EdgeInsets.symmetric(horizontal: 6),
//                      child: Text('Favorite',style: TextStyle(color: colors.titleColor,fontWeight: FontWeight.w600,fontSize: 16),),
//                    )
//                        ],
//                      )
//                    )

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
