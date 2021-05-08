import 'package:app/app/routes/app_pages.dart';
import 'package:app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventDetailView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EventDetailView'.tr),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.EventAddView);
        },
        child: Icon(Icons.edit),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('asset/1.png'),
            ListTile(
            
              title: Text('الحالة'),
              subtitle: Text('في انتظار تحديد مقدم الطعام'),
            ),
            ListTile(
              title: Text('إسم الأيفنت'),
              subtitle: Text('إسم الأيفنت'),
            ),
            ListTile(
              title: Text('التصنيف'),
              subtitle: Text('التصنيف'),
            ),
            ListTile(
              title: Text('التاريخ'),
              subtitle: Text('1-1-2010'),
            ),
            ListTile(
              title: Text('عدد المدعويين'),
              subtitle: Text('20'),
            ),
            ListTile(
              title: Text('عدد الذين قبلوا الدعوة'),
              subtitle: Text('15'),
            ),
            SizedBox(
              height: 10,
            ),

            /*RaisedButton(
              onPressed: () {},
              child: Text('add'.tr),
            )*/
          ],
        ),
      ),
    );
  }
}
