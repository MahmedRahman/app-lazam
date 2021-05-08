import 'package:flutter/material.dart';
import 'package:app/utils/theme.dart' as theme;

class AuthorizationBackground extends StatelessWidget {
  const AuthorizationBackground({
    Key key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .4,
            decoration: BoxDecoration(gradient: theme.lineargradient),
          ),
        ],
      ),
    );
  }
}
