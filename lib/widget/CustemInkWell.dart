import 'package:flutter/material.dart';
import 'package:app/utils/theme.dart' as theme;

class CustemInkWell extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function ontaptitle;
  final Function ontapsubtitle;
  const CustemInkWell(
      {Key key,
      @required this.title,
      this.subtitle,
      this.ontaptitle,
      this.ontapsubtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: const EdgeInsets.only(bottom: 35),
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: ontaptitle,
                  child: Text(
                    title,
                    style: theme.StyleText[2],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: ontapsubtitle,
                  child: Text(
                    subtitle,
                    style: theme.StyleText[5],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
