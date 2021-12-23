import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  MyDropDown(this.label, this.hintText, this.items, this.onSelected);
  final String label;
  final String hintText;
  final Function onSelected;
  List<String> items;

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(
              fontSize: 20, color: Colors.red, fontWeight: FontWeight.w900),
          textAlign: TextAlign.start,
        ),
        Container(
          child: DropdownButton2(
            hint: Text(
              widget.hintText,
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).hintColor,
              ),
            ),
            items: widget.items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value as String;
              });
              widget.onSelected(selectedValue);
            },
            buttonHeight: 40,
            buttonWidth: 140,
            itemHeight: 40,
            itemWidth: 140,
          ),
        ),
      ],
    );
  }
}
