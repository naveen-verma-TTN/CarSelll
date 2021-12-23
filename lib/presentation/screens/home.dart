import 'package:car_sell/presentation/components/outline_button.dart';
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.home),
            const SizedBox(
              width: 10.0,
            ),
            Text(title),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Image.asset('assets/images/cars_logo.png'),
          ),
          Expanded(
            child: ContainerWidget(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomOutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/seller_info_screen');
                    },
                    gradient: LinearGradient(colors: [
                      Colors.blueGrey.shade800,
                      Colors.blueGrey.shade200
                    ]),
                    child: const Text('Go To Seller Screen'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 50.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade600,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 20.0),
        decoration: BoxDecoration(
          color: Colors.blueGrey.shade200,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: child,
      ),
    );
  }
}
