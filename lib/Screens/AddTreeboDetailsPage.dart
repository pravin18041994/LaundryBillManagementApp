import 'package:flutter/material.dart';

class AddTreeboDetailsPage extends StatefulWidget {
  @override
  _AddTreeboDetailsPageState createState() => _AddTreeboDetailsPageState();
}

class _AddTreeboDetailsPageState extends State<AddTreeboDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add treebo details"
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        
      
      ),
      
    );
  }
}