import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app/utils/theme.dart' as theme;

class CustemLogo extends StatelessWidget {
  final String tilte;

  const CustemLogo({
    Key key,
    this.tilte,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 150,
              child: SvgPicture.asset(theme.logo[0]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                tilte,
                textAlign: TextAlign.center,
                style: theme.StyleText[4].copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
