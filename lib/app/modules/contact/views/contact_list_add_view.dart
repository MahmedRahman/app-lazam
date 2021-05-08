import 'package:app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactListAddView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ContactListAddView'.tr),
        centerTitle: true,
        
      ),
            floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.back();
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'جهات الإتصال',
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
          
          ],
        ),
      ),
    );
  }
}
