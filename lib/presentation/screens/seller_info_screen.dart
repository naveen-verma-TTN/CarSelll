import 'package:car_sell/presentation/components/components.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:im_stepper/stepper.dart';

/// Created by Naveen Verma on 22-12-2021
/// To The New
/// naveen.verma@tothenew.com

class SellerInfoScreen extends StatefulWidget {
  const SellerInfoScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SellerInfoScreen> createState() => _SellerInfoScreenState();
}

class _SellerInfoScreenState extends State<SellerInfoScreen> {
  int activeStep = 0;

  int upperBound = 2;

  final icons = [
    Icon(
      FontAwesomeIcons.userTie,
      color: Colors.blueGrey[900],
    ),
    Icon(
      FontAwesomeIcons.car,
      color: Colors.blueGrey[900],
    ),
    Icon(
      FontAwesomeIcons.fileImage,
      color: Colors.blueGrey[900],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconStepper(
                stepColor: Colors.blueGrey[200],
                activeStepColor: Colors.blueGrey[600],
                activeStepBorderColor: Colors.blueGrey[900],
                icons: icons,
                lineDotRadius: 2.0,
                lineColor: Colors.blueGrey[900],
                activeStep: activeStep,
                onStepReached: (index) {
                  setState(() {
                    activeStep = index;
                  });
                },
              ),
            ),
            header(activeStep),
            Expanded(
              child: Center(
                child: Text(
                  'Page $activeStep',
                  style:
                      const TextStyle(color: Colors.blueGrey, fontSize: 50.0),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                previousButton(),
                nextButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Returns the next button.
  Widget nextButton() {
    return TextButton(
      onPressed: () {
        if (activeStep < upperBound) {
          setState(() {
            activeStep++;
          });
        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          activeStep < upperBound
              ? Colors.blueGrey[900]
              : Colors.blueGrey.withOpacity(0.50),
        ),
      ),
      child: const Text('Next'),
    );
  }

  /// Returns the previous button.
  Widget previousButton() {
    return Visibility(
      child: TextButton(
        onPressed: () {
          if (activeStep > 0) {
            setState(() {
              activeStep--;
            });
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            activeStep > 0
                ? Colors.blueGrey[900]
                : Colors.blueGrey.withOpacity(0.50),
          ),
        ),
        child: const Text('Prev'),
      ),
    );
  }
}
