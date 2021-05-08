
import 'package:app/utils/theme.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: TextField(
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
                style: BorderStyle.solid,
                width: 1,
              ),
            ),
            hintText: 'البحث',
            prefixIcon: Icon(
              Icons.search,
              color: ColorPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
