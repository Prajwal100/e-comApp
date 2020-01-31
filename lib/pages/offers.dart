import 'package:flutter/material.dart';
import 'package:samiksha/main.dart';
import 'package:samiksha/colors.dart' as colors;
class OfferPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: colors.headerColor,
        title:Text('Offers'),
        actions: <Widget>[
          IconButton(
            onPressed:(){},
            icon: Icon(Icons.shopping_cart,
              color: Colors.white,
            ),
          )
        ],
      ),
      drawer: MyDrawer(),
      body:GridView.builder(
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context,index){
        return individualOffer();
      })
    );
  }
}

Widget individualOffer(){
  return Card(
    child: Material(
      child: InkWell(
        onTap: (){debugPrint('ddd');},
        child: GridTile(
            footer: Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
              color: Colors.white,
              child: Container(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('CSIT Books',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: colors.titleColor),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: <Widget>[
                          Text('Rs. 1000'),
                          Row(
                            children: <Widget>[
                              Icon(Icons.star,size: 12,color: colors.dIconColor,),
                              Icon(Icons.star,size: 12,color: colors.dIconColor,),
                              Icon(Icons.star,size: 12,color: colors.dIconColor,),
                              Icon(Icons.star,size: 12,color: colors.dIconColor,),
                              Icon(Icons.star_border,size: 12,color: colors.dIconColor,)

                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Rs. 1000',style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 12,color:Colors.grey),),
                          Text('(10)',style: TextStyle(color:Colors.grey),)
                        ],
                      ),
                    ],
                  )

//                      leading: Text(
//                        prod_name,
//                        style: TextStyle(fontWeight: FontWeight.bold),
//                      ),
//                      title: Text(
//                        "\$$prod_price",
//                        style: TextStyle(
//                            color: Colors.red, fontWeight: FontWeight.w800),
//                      ),
//                      subtitle: Text(
//                        "\$$prod_old_price",
//                        style: TextStyle(
//                            color: Colors.black54,
//                            fontWeight: FontWeight.w800,
//                            decoration
//                                :TextDecoration.lineThrough),
//                      ),
              ),
            ),
            child: Image.asset(
              'images/product/1.jpg',
              fit: BoxFit.cover,
            )),
      ),
    ),

  );
}
