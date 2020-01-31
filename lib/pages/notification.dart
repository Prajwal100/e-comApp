import 'package:flutter/material.dart';
import 'package:samiksha/main.dart';
import 'package:samiksha/colors.dart' as colors;

// MyApp is a StatefulWidget. This allows updating the state of the
// widget when an item is removed.
class NotificationPage extends StatefulWidget {
  NotificationPage({Key key}) : super(key: key);

  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<NotificationPage> {
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    final title = 'Dismissing Items';

    return Scaffold(
        appBar: AppBar(
          title: Text('Notice'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Dismissible(
              key: Key(item),
              onDismissed: (direction) {
                setState(() {
                  items.removeAt(index);
                });
                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text("Successfully removed")));
              },
              // Show a red background as the item is swiped away.
              background: Container(color: colors.dashboardColor),
              child: ListTile(
                  title: Text('Still thinking it over?'),
                  subtitle: Text('Yesterday'),
                  leading: Icon(Icons.notifications_active),
                  isThreeLine: true,
                  trailing: Image.asset('images/product/1.jpg'),
                
              ),

            );

          },
        ),
      );

  }
}
