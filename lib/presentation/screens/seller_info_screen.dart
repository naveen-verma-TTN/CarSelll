import 'package:car_sell/presentation/components/CustomHeadingSeller.dart';
import 'package:car_sell/presentation/components/CustomTextFieldCity.dart';
import 'package:car_sell/presentation/components/CustomTextFieldPin.dart';
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomPageHeadingSeller(),
            CustomTextFieldCity(),
            CustomTextFieldPin(),
            Container(
              margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: Image.asset(
                'assets/images/bikesmall.png',
                fit: BoxFit.fitWidth,
              ),
            )
          ],
        ));
  }
}
