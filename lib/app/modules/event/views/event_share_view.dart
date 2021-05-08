import 'package:app/app/routes/app_pages.dart';
import 'package:app/utils/constants.dart';
import 'package:app/utils/utils.dart';
import 'package:app/widget/CustemDropdownButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventShareView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EventShareView'.tr),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Get.toNamed(Routes.EventDetailView);
              },
              child: Icon(Icons.event),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Utils().showDialog(AppName, 'جارى ارسال الدعوات الى المدعوين', () {
            Get.back();
          });
        },
        child: Icon(Icons.send),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset('asset/1.png'),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: CustomDropdownButton(
                      listDropdown: ['اصدقاء', 'اضدقاء العمل'],
                      labelDropdownButton: 'جهات الاتصال',
                    ),
                  ),
                  Flexible(
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(Routes.ContactListDetailView);
                        },
                        child: Icon(Icons.add),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
