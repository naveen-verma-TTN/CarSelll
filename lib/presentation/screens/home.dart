import 'package:flutter/material.dart';

/// Created by Naveen Verma on 22-12-2021
/// To The New
/// naveen.verma@tothenew.com

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('assets/images/cars_logo.png'),
          OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/seller_info_screen');
            },
            style: OutlinedButton.styleFrom(
              shape: const StadiumBorder(),
            ),
            child: const Text("Go To Seller Screen"),
          )
        ],
      ),
    );
  }
}
