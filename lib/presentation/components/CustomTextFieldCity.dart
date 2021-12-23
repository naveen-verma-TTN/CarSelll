import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFieldCity extends StatelessWidget {
  const CustomTextFieldCity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        style: const TextStyle(
            fontSize: 15.0, fontWeight: FontWeight.w700, letterSpacing: 0.2),
        decoration: const InputDecoration(
          hintText: 'Type your city',
          labelText: 'City *',
          labelStyle: TextStyle(),
        ),
      ),
    );
  }
}