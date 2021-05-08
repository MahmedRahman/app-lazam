import 'package:app/utils/theme.dart' as theme;

import 'package:flutter/material.dart';

class CustemAppBar extends StatelessWidget {
  final String title;

  const CustemAppBar({
    Key key,@required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        title:Text(title,style: TextStyle(fontSize: 14),),
        backgroundColor: theme.ColorPrimary,
        elevation: 2, 
      );
  }
}