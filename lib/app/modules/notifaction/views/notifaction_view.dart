import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/app/modules/notifaction/controllers/notifaction_controller.dart';

class NotifactionView extends GetView<NotifactionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NotifactionView'.tr),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.notifications,
              size: 128,
            ),
            Text(
              'No Notices Right Now'.tr,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'You are up to date'.tr,
              style: TextStyle(fontSize: 20),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('الصفحة الرئسية'),
            )
          ],
        ),
      ),
    );
  }
}
