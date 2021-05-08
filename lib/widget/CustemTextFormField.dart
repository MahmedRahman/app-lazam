import 'package:app/utils/theme.dart' as theme;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

enum textType { text, password, textarea }

class CustemTextFormField extends StatelessWidget {
  final String hintText;
  final String helperText;
  final String iconPath;
  final String errorText;
  final textType textInputType;
  final TextInputType keyboardType;
  final FormFieldSetter<String> onSaved;
  final FormFieldSetter<String> onChanged;
  final FormFieldSetter<String> onValidator;
  final TextEditingController textEditingController;

  const CustemTextFormField(
      {Key key,
      @required this.hintText,
      this.helperText,
      this.iconPath,
      this.textInputType,
      this.errorText,
      this.textEditingController,
      this.onSaved,
      this.onValidator,
      this.onChanged,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          controller: textEditingController,
          onSaved: onSaved,
          validator: onValidator,
          keyboardType: keyboardType,
          onChanged: onChanged,
          obscureText: textInputType == textType.password ? true : false,
          obscuringCharacter: '*',
          autofocus: false,
          maxLines: textInputType == textType.textarea ? 5 : 1,
          textDirection: TextDirection.rtl,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
            errorText: errorText,
            filled: false,
            prefixIcon: Padding(
              padding: EdgeInsets.all(10), // add padding to adjust icon
              child: SizedBox(
                width: 20,
                height: 20,
                child: SvgPicture.asset(
                  iconPath,
                ),
              ),
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
            helperText: helperText,
            helperStyle: theme.StyleText[3],
            enabled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: theme.ColorPrimary,
                width: 1.5,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: theme.ColorPrimary,
                width: 2,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: theme.ColorPrimary,
                width: 2,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
                width: 2,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
