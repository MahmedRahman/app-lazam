import 'package:app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventAddView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('EventAddView'.tr),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.back();
          },
          child: Icon(Icons.save),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Image.asset('asset/1.png'),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'إسم الأيفنت',
                    icon: Icon(
                      Icons.contact_mail,
                      size: 32,
                      color: ColorPrimary,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
       
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'التاريخ',
                    icon: Icon(
                      Icons.date_range,
                      size: 32,
                      color: ColorPrimary,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'ألوقت',
                    icon: Icon(
                      Icons.timer,
                      size: 32,
                      color: ColorPrimary,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'العنوان',
                    icon: Icon(
                      Icons.location_city,
                      size: 32,
                      color: ColorPrimary,
                    ),
                  ),
                ),    SizedBox(
                  height: 10,
                ),
                   TextFormField(
                  decoration: InputDecoration(
                    labelText: 'العدد المتوقع للحضور',
                    icon: Icon(
                      Icons.format_list_numbered,
                      size: 32,
                      color: ColorPrimary,
                    ),
                  ),
                ), 
              ],
            ),
          ),
        ));
  }
}
