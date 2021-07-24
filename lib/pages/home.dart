import 'dart:math';

import '../widgets/binaryAppBar.dart';
import '../widgets/binaryTextField.dart';
import '../widgets/decimalText.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late TextEditingController _binaryTextField;
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: binaryAppBar(title: widget.title),
      body: Container(
        color: Color(0xff173E7D),
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: binaryTextField(
                  onChangeBinary: onChangeBinary,
                  binaryTextField: _binaryTextField,
                ),
                flex: 1,
              ),
              Expanded(
                child: decimalText(number: _number),
                flex: 1,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _binaryTextField = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _binaryTextField.dispose();
  }

  void onChangeBinary(String bin) {
    int value = 0;

    for (var i = 0; i < bin.length; i++) {
      int val = int.parse(bin[bin.length - i - 1]);
      value += val * pow(2, i).toInt();
    }
    setState(() {
      _number = value;
    });
  }
}
