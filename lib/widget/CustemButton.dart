
import 'package:flutter/material.dart';
import 'package:app/utils/theme.dart' as theme;

class CustemButton extends StatelessWidget {
  final String title;
  final Function ontap;
  const CustemButton({
    @required this.title,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: RaisedButton(
          padding: EdgeInsets.symmetric(vertical: 10),
          onPressed: ontap,
          child: Text(
            title,
            style: theme.StyleText[1],
          ),
          elevation: 1,
          color: theme.ColorPrimary,
          textTheme: ButtonTextTheme.primary,
          textColor: theme.ColorAccent,
          clipBehavior: Clip.antiAlias,
          focusElevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(color: theme.ColorAccent),
          ),
        ),
      ),
    );
  }
}
