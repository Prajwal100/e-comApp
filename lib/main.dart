import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_pro/carousel_pro.dart';

//Colors
import 'package:samiksha/colors.dart' as colors;
import 'package:samiksha/components/dashboard_tab.dart';
import 'package:samiksha/components/recent_release.dart';

//pages
import 'components/features_products.dart';
import 'components/slideTransition.dart';
import 'pages/about.dart';
import 'pages/cart.dart';
import 'pages/chat.dart';
import 'pages/contact.dart';
import 'pages/notification.dart';
import 'pages/reward.dart';
import 'pages/wishlist.dart';
import 'package:samiksha/pages/offers.dart';
import 'package:samiksha/pages/orders.dart';
import 'package:samiksha/pages/profile.dart';
import 'package:samiksha/pages/shop.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      textTheme: GoogleFonts.poppinsTextTheme(),
    ),
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/ads/ads3.png'),
          AssetImage('images/ads/ads.png'),
          AssetImage('images/ads/ads2.jpg'),
        ],
        indicatorBgPadding: 0,
        dotSize: 0,
      ),
    );
    Widget social_carousel=new Container(
      height:60.0,
      width: 60 ,
      child:new Carousel(
        images: [
          AssetImage('images/ads/ads3.png'),
          AssetImage('images/ads/ads.png'),
          AssetImage('images/ads/ads2.jpg'),
        ],
        indicatorBgPadding: 0,
        dotSize: 0,
      ),
    );
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: colors.headerColor,
          title: Text('Home'),
          actions: <Widget>[
//          Search Button
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
              },
            ),

//          Cart button
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>CartPage()));
              },
            ),
          ],
        ),

//      Drawer starts
        drawer: MyDrawer(),
    body: new ListView(
      children: <Widget>[
      //image carousel begins here
      image_carousel,
  //    dashboard-tab
      Container(
        height:width,
        child:Dashboard_tab(),
      ),
        Container(
            width: double.infinity,
            height: 90,
            child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (BuildContext context,int index){
                  return Container(
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(8),
                              height: 70,
                              width: 70,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(FontAwesomeIcons.facebookF,color: Colors.white,),
                              ),
                            ),
                          ],
                        ),
                      )

                  );
                })
        ),

        Container(
            color: colors.headerColor,
            child:Column(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text('Samiksha publication page links',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                  ),
                )
              ],
            )
        ),
//        line
        Container(
          height: .5,
          color: Colors.white70,

        ),
        Container(
            color: colors.headerColor,
            child:Column(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text('Samiksha Book facebook account links',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                  ),
                )
              ],
            )
        ),
        //        line
        Container(
          height: .5,
          color: Colors.white70,

        ),
        Container(
            color: colors.headerColor,
            child:Column(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text('Arun Books',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                  ),
                )
              ],
            )
        ),

        //Title Recent products
        Container(
        color: colors.dIconColor,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Recent Products',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
            FlatButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: BorderSide(color: Colors.white)),
              onPressed: (){},
              child: Text('View All',style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),

        //grid view
        Container(
          child: Products()
        ),

        //Title Featured products
        Container(
          color: colors.dIconColor,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Featured Products',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
              FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: BorderSide(color: Colors.white)),
                onPressed: (){},
                child: Text('View All',style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        ),

        //grid view
        Container(
          child: Products(),
        ),
        //Title Recent products
        Container(
          height: 30,
          color: colors.dIconColor,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('How to order',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10),),
              Text('Order Status',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10),),
              Text('Term & Condition',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10),),
              Text('Download',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10),),
            ],
          ),
        ),
      ],
    ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: new ListView(
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: colors.sidebarBox,
          ),
          child: Image.asset('images/logo.png'),
        ),

//          Menus part
        InkWell(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new HomePage()));
            },
            child: ListTile(
              title: Text('Home',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold)),
              leading: Icon(
                Icons.home,
                size: 26,
              ),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey.withOpacity(.4),
          ),
        ),
        InkWell(
            onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new ShopPage(navFlag: 1,)));

            },
            child: ListTile(
              title: Text('Shop',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold)),
              leading: Icon(Icons.shopping_basket),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey.withOpacity(.4),
          ),
        ),
        InkWell(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new OfferPage()));
            },
            child: ListTile(
              title: Text('Offers',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold)),
              leading: Icon(Icons.star),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey.withOpacity(.4),
          ),
        ),
        InkWell(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new CartPage(navFlag:1)));
            },
            child: ListTile(
              title: Text('Cart',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold)),
              leading: Icon(Icons.shopping_cart),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey.withOpacity(.4),
          ),
        ),
        InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>OrderPage()));
            },
            child: ListTile(
              title: Text('Orders',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold)),
              leading: Icon(Icons.list),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey.withOpacity(.4),
          ),
        ),
        InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>RewardPage()));
            },
            child: ListTile(
              title: Text('Reward Points',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold)),
              leading: Icon(Icons.fast_rewind),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey.withOpacity(.4),
          ),
        ),
        InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>WishlistPage(navFlag: 1,)));
              },
            child: ListTile(
              title: Text('Wishlist',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold)),
              leading: Icon(Icons.favorite_border),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey.withOpacity(.4),
          ),
        ),
        ExpansionTile(
          title: Text('Settings',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold)),
          leading: Icon(Icons.settings),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>ProfilePage()));

                  },
                  child: ListTile(
                    title: Text('Prajwal Rai',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold)),
                    leading: Icon(Icons.account_circle),
                    trailing: Icon(Icons.power_settings_new),
                  )),
            ),
//            line
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.withOpacity(.4),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                  onTap: () {

                  },
                  child: ListTile(
                    title: Text('Engineering Related',overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold)),
                    leading: Icon(FontAwesomeIcons.tags),
                    trailing: Icon(FontAwesomeIcons.exchangeAlt),
                  )),
            ),
//            line
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.withOpacity(.4),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>NotificationPage()));

                  },
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.notifications, color: Colors.black54),
                      Expanded(
                        child: SwitchListTile(
                          title: Text(
                            'Notification',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          value: true,
                          onChanged: (val) {},
                        ),
                      ),
                    ],
                  )),
            ),
//line
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.withOpacity(.4),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context, SlideRightRoute(page: ChatPage()));
                  },
                  child: ListTile(
                    title: Text('Chat',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold)),
                    leading: Icon(Icons.chat),
                  )),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey.withOpacity(.4),
          ),
        ),
        InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>ContactPage(navFlag: 1,)));
            },
            child: ListTile(
              title: Text('Contact',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold)),
              leading: Icon(Icons.email),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey.withOpacity(.4),
          ),
        ),
        InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>AboutPage()));
//              Navigator.push(context, SlideRightRoute(page: AboutPage()));
            },
            child: ListTile(
              title: Text('About Us',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold)),
              leading: Icon(Icons.info_outline),
            )),
      ],
    ));
  }
}

Widget _buildItems(int index, BuildContext context){
  return Container(
    height: 200,
child: Text('hello'),
//    child: GestureDetector(
//      onTap: (){},
//      child: Column(
//        children: <Widget>[
////          Expanded(
////            child: Hero(
////              tag: 'hello',
////              child: Image.asset('images/product/1.jpg'),
////            ),
////          ),
////          SizedBox(
////            height: 10,
////          ),
//          Text('kdkddkdkd'),
//          Text('Rs.202')
//        ],
//      ),
//    ),
  );
}