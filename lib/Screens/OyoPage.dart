import 'package:flutter/material.dart';

class OyoPage extends StatefulWidget {
  @override
  _OyoPageState createState() => _OyoPageState();
}

class _OyoPageState extends State<OyoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (ctx, index) => Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.red,
                ))),
      ),
    );
  }
}
