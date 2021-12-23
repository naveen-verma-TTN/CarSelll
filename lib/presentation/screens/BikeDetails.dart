import 'package:car_sell/presentation/components/MyDropDown.dart';
import 'package:flutter/material.dart';

class BikeDetails extends StatefulWidget {
  static const String id = 'CarDetails';

  const BikeDetails({Key? key}) : super(key: key);

  @override
  State<BikeDetails> createState() => _BikeDetailsState();
}

class _BikeDetailsState extends State<BikeDetails> {
  // const BikeDetails({Key? key, required this.title}) : super(key: key);
  String dropDownValue = 'Select Value';
  List<String> options = <String>['One', 'Two', 'Free', 'Four'];
  String dropdownValue = 'One';

  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];

  List<String> bikeModel = [
    'Model1',
    'Model2',
    'Model3',
    'Model4',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bike Details'),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          MyDropDown('Bike Name', 'Select Bike', items, (value) {
            print('selected bike : $value');
          }),
          SizedBox(
            height: 20,
          ),
          MyDropDown('Bike Model', 'Select Model', bikeModel, (value) {
            print('Selected Model : $value');
          }),
          // ),
        ]),
      ),
    );
  }
}
