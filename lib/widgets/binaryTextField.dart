import 'package:flutter/material.dart';

Container binaryTextField({
  required Function onChangeBinary,
  required TextEditingController binaryTextField,
}) {
  return Container(
    child: Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 100),
        child: TextField(
          textAlign: TextAlign.center,
          onChanged: (value) {
            onChangeBinary(value);
          },
          controller: binaryTextField,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
          decoration: InputDecoration(
              labelText: "Binary :",
              labelStyle: TextStyle(color: Colors.white),
              hintText: "1001101",
              hintStyle: TextStyle(
                color: Colors.blueGrey,
              )),
        ),
      ),
    ),
  );
}
