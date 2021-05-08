import 'package:app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactListDetailView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ContactListDetailView'.tr),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.toNamed(Routes.ContactAddView);
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
              color: Color(0xFFF3F4E1),
              child: ListTile(
                title: Text('محمد عبد العزيز'),
                subtitle: Text('01002089079'),
                trailing: Icon(Icons.delete),
              ),
            );
          }),
    );
  }
}
