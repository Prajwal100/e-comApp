import 'package:flutter/material.dart';
import 'package:samiksha/colors.dart' as colors;
class Features extends StatefulWidget {
  @override
  _FeaturesState createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  var product_list = [
    {
      "name": "Medical Science",
      "picture": "images/product/1.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Engineering",
      "picture": "images/product/2.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Medical Science",
      "picture": "images/product/3.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Engineering",
      "picture": "images/product/4.jpg",
      "old_price": 100,
      "price": 50,
    }
  ];

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_pricture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () {
              },
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: Container(
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(prod_name,style: TextStyle(fontSize: 16),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                  color:colors.dashboardColor,
                                  child: Padding(
                                    padding: new EdgeInsets.fromLTRB(15, 5, 15, 5),
                                    child: Text('\$NRs. $prod_price'),
                                  ),
                                ),
                                InkWell(
                                    onTap: (){},
                                    child: Icon(Icons.shopping_cart,color:colors.dIconColor,)),
                                InkWell(
                                    onTap: (){},
                                    child: Icon(Icons.favorite_border,color: colors.dIconColor,)),
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
                    prod_pricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
