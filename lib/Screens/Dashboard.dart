import 'package:flutter/material.dart';
import 'package:laundry_bill_management/Screens/AddOyoDetailsPage.dart';
import 'package:laundry_bill_management/Screens/DrawerPage.dart';
import 'package:laundry_bill_management/Screens/NotificationsPage.dart';

import 'LoginScreen.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerPage(),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: true,
            backgroundColor: Colors.red,
            expandedHeight: 150.0,
            pinned: true,
            actions: [
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => NotificationsPage()));
                },
              ),
              PopupMenuButton<String>(
                onSelected: (val) {},
                itemBuilder: (BuildContext context) {
                  return {'Logout', 'Settings'}.map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              ),
            ],
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: [StretchMode.fadeTitle, StretchMode.zoomBackground],
              title: Text(
                "Laundry Bill Management",
                style: TextStyle(fontSize: 16.0),
              ),
              background: Image.network(
                "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                  (ctx, index) => Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          borderOnForeground: true,
                          child: Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("Images/oyo.jpeg"),
                                  fit: BoxFit.fill,
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                              child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 30,
                                      child: RaisedButton(
                                        color:
                                            Colors.transparent.withOpacity(0.4),
                                        child: Text(
                                          "Add OYO",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onPressed: () {
                                          print("Clicked");
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      AddOyoDetailsPage()));
                                        },
                                      )))),
                        ),
                      ),
                  childCount: 20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ))
        ],
      ),
    );
  }
}
