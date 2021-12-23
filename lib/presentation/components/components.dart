import 'package:flutter/material.dart';

/// Created by Naveen Verma on 22-12-2021
/// To The New
/// naveen.verma@tothenew.com

// todo: Add constants values here

Widget header(int activeStep) {
  return Container(
    margin: const EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Colors.blueGrey[200],
      borderRadius: BorderRadius.circular(5),
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            headerText(activeStep),
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 15.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    ),
  );
}

String headerText(int activeStep) {
  switch (activeStep) {
    case 0:
      return 'Select city to sell you bike';

    case 1:
      return 'Please enter car information';

    case 2:
      return 'Please upload Images';

    default:
      return '';
  }
}

Widget customTextView(String hintText, String label) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        style: const TextStyle(
            fontSize: 15.0, fontWeight: FontWeight.w700, letterSpacing: 0.2),
        decoration: InputDecoration(
          hintText: hintText,
          labelText: label,
        ),
      ),
    );
