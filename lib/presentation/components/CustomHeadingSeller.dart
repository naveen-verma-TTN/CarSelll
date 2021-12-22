import 'package:flutter/cupertino.dart';

class CustomPageHeadingSeller extends StatelessWidget {
  const CustomPageHeadingSeller({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Align(
        alignment: AlignmentDirectional.topCenter,
        child: Text(
          'Select city to sell you bike',
          textAlign: TextAlign.end,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
      ),
    );
  }
}
