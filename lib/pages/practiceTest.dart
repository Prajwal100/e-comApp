import 'package:flutter/material.dart';
import 'package:samiksha/main.dart';
import 'package:samiksha/colors.dart' as colors;

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: colors.headerColor,
          title:Text('Practice Test'),
        ),
        body:Container(
         child: Products(),
        )
    );
  }
}




class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "title": "All ",
    },
    {
      "title": "Computer Basic",

    },
    {
      "title": "Php",
    },
    {
      "title": "Android",
    },
    {
      "title": "All Programing",
    },
    {
      "title": "Computer Basic",

    },
    {
      "title": "Php",
    },
    {
      "title": "Android",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['title'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;

  Single_prod({
    this.prod_name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: Card(
        child: Center(child: Text(prod_name)),
      ),
    );
  }
}

