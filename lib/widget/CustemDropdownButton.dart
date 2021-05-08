import 'package:app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton({
    Key key,
    @required this.listDropdown,
    this.labelDropdownButton,
  }) : super(key: key);

  final List<String> listDropdown;
  final String labelDropdownButton;

  @override
  Widget build(BuildContext context) {
    var selectText = listDropdown.elementAt(0).toString().obs;
    return Obx(
      () {
        return Center(
          child: Container(
           //width: Get.width *.7 ,
            child: DropdownButton(
              style: headline1.copyWith(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
              value: selectText.value,
              icon: Icon(Icons.arrow_drop_down),
              isExpanded: true,
              items: new List.generate(
                listDropdown.length,
                (index) {
                  return new DropdownMenuItem(
                      value: listDropdown.elementAt(index).toString(),
                      child: Text(listDropdown.elementAt(index).toString()));
                },
              ),
              onChanged: (value) {
                selectText.value = value;
                print(value);
              },
            ),
          ),
        );
      },
    );
  }
}
