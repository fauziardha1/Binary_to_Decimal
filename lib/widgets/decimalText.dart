import 'package:flutter/material.dart';

Container decimalText({required int number}) {
  return Container(
    color: Color(0xff2C4C9C),
    child: Center(
      child: simpleText(number.toString()),
    ),
  );
}

Text simpleText(String value) {
  return Text(
    "Decimal : $value",
    style: TextStyle(fontSize: 30, color: Colors.white),
  );
}
