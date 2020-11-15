import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications "),
      ),
      body: Container(
        
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child: Center(
            child: Text(
          "No Notifications",
          style: TextStyle(
            fontSize: 30.0,
          ),
        )),
      ),
    );
  }
}
