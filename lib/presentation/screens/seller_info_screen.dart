import 'package:flutter/material.dart';

/// Created by Naveen Verma on 22-12-2021
/// To The New
/// naveen.verma@tothenew.com

class SellerInfoScreen extends StatelessWidget {
  const SellerInfoScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
