
import 'package:flutter/material.dart';

class TextLabel extends StatelessWidget {
  
  final String label;
  final String subTitle;

  const TextLabel({
    Key key,
    this.label,
    this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: TextDirection.rtl,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            label,
            textDirection: TextDirection.rtl,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            subTitle,
            textDirection: TextDirection.rtl,
          ),
        ),
        Divider(
          color: Colors.black,
        )
      ],
    );
  }
}