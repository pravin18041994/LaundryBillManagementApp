import 'package:flutter/material.dart';

class DynamicTextfield extends StatelessWidget {
  var successIcon = Icon(Icons.check);
  var cancelIcon = Icon(Icons.delete);
  var checkIcon;
  var fixedPriceclicked = false;
  var perPriceclicked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                // setState(() {
                //   checkIcon = successIcon;
                // });
              },
              child: checkIcon,
            ),
          ),
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.add),
            onPressed: () {
              DynamicTextfield();
              print("sc");
            },
          )
        ],
      ),
    );
  }
}
