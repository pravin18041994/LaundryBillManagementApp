import 'package:flutter/material.dart';
import 'package:laundry_bill_management/MyCustomWidgets/DynamicTextfield.dart';

class AddOyoDetailsPage extends StatefulWidget {
  @override
  _AddOyoDetailsPageState createState() => _AddOyoDetailsPageState();
}

class _AddOyoDetailsPageState extends State<AddOyoDetailsPage> {
  bool valuefirst = false;
  List myList = [];

  var successIcon = Icon(Icons.check);
  var cancelIcon = Icon(Icons.delete);
  var checkIcon;
  var fixedPriceclicked = false;
  var perPriceclicked = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkIcon = cancelIcon;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Oyo details"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Flexible(
                child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.home),
                      hintText: "Add oyo name",
                      hintStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide()),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide()),
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Add categories and rates",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
                Container(
                  height: MediaQuery.of(context).size.height * 0.65,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (ctx, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.95,
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.1,
                              color: Colors.white,
                              child: TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Double Bedsheets,etc",
                                  hintStyle: TextStyle(color: Colors.black),
                                  enabledBorder: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.red)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.red)),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              color: Colors.white,
                              child: TextField(
                                keyboardType: TextInputType.phone,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: "20Rs",
                                  focusedBorder: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.red)),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.10,
                              color: Colors.white,
                              child: GestureDetector(
                                // onDoubleTap: () {
                                //   print("Double Tap");
                                // },
                                onTap: () {
                                  print("Single");
                                  setState(() {
                                    checkIcon = successIcon;
                                  });
                                },
                                child: checkIcon,
                              ),
                            ),
                            IconButton(
                              color: Colors.black,
                              icon: Icon(Icons.add),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
            Container(
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {},
                child: Text(
                  "Save Details",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
