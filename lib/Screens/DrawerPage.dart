import 'package:flutter/material.dart';
import 'package:laundry_bill_management/Screens/OyoPage.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => OyoPage()));
              },
              leading: Icon(
                Icons.room,
                color: Colors.red,
                size: 25,
              ),
              title: Text(
                "OYO",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.red),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.room_outlined,
                color: Colors.green,
                size: 25,
              ),
              title: Text(
                "Treebo",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.green),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.room_rounded,
                color: Colors.black,
                size: 25,
              ),
              title: Text(
                "Lodges",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.food_bank,
                color: Colors.black,
                size: 25,
              ),
              title: Text(
                "Hotels",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.room_preferences,
                color: Colors.black,
                size: 25,
              ),
              title: Text(
                "Hotels + Lodges",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.local_hospital,
                color: Colors.black,
                size: 25,
              ),
              title: Text(
                "Hospitals",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.category_outlined,
                color: Colors.black,
                size: 25,
              ),
              title: Text(
                "Caterors",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
