import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';

/// Created by Naveen Verma on 23-12-2021
/// To The New
/// naveen.verma@tothenew.com

class CustomOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final ButtonStyle? style;
  final Gradient? gradient;
  final double thickness;

  const CustomOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.style,
    this.gradient,
    this.thickness = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        border: Border.all(width: 1.0, color: Colors.blueGrey.shade900),
      ),
      // margin: EdgeInsets.all(thickness),
      child: OutlinedButton(
        onPressed: onPressed,
        style: style,
        child: child,
      ),
    );
  }
}
