import 'package:app/app/routes/app_pages.dart';
import 'package:app/utils/theme.dart';
import 'package:app/widget/CustemDropdownButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactAddView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ContactAddView'.tr,
        ),
      ),

        floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.back();
        },
        child: Icon(Icons.add),
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'الإسم الأول',
                    icon: Icon(
                      Icons.contact_mail,
                      size: 32,
                      color: ColorPrimary,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'رقم الهاتف',
                    icon: Icon(
                      Icons.phone,
                      size: 32,
                      color: ColorPrimary,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              CustomDropdownButton(
                listDropdown: ['اصدقاء', 'اضدقاء العمل'],
                labelDropdownButton: 'جهات الاتصال',
              ),
              SizedBox(
                height: 20,
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
