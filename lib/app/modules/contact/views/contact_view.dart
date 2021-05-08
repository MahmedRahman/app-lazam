import 'package:app/app/routes/app_pages.dart';
import 'package:app/utils/theme.dart';
import 'package:app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/app/modules/contact/controllers/contact_controller.dart';

class ContactView extends GetView<ContactController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          indicatorColor: ColorPrimary,
          tabs: [
            Tab(
              child: Container(
                child: Text(
                  'Contactlist'.tr,
                  style: TextStyle(color: ColorPrimary),
                ),
              ),
            ),
            Tab(
              child: Container(
                child: Text(
                  'Contacts'.tr,
                  style: TextStyle(color: ColorPrimary),
                ),
              ),
            )
          ],
        ),
        body: Scaffold(
          body: TabBarView(children: [
            Scaffold(
              floatingActionButton: new FloatingActionButton(
                heroTag: null,
                child: Icon(Icons.add),
                onPressed: () {
                  Get.toNamed(Routes.ContactAddView);
                },
              ),
              body: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (contaxt, index) {
                    return Card(
                      color: Color(0xFFF3F4E1),
                      child: ListTile(
                        title: Text('محمد عبد العزيز'),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('01002089079'),
                            Text('عائلية'),
                          ],
                        ),
                        leading: Icon(
                          Icons.contacts,
                          color: ColorPrimary,
                          size: 32,
                        ),
                        trailing:  Icon(Icons.delete),
                        dense: true,
                      ),
                    );
                  }),
            ),
            Scaffold(
              floatingActionButton: new FloatingActionButton(
                  heroTag:null,
                child: Icon(Icons.add),
                onPressed: () {
                  Get.toNamed(Routes.ContactListAddView);
                },
              ),
              body: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (contaxt, index) {
                    return Card(
                      color: Color(0xFFF3F4E1),
                      child: ListTile(
                        onTap: (){
                          Get.toNamed(Routes.ContactListDetailView);
                        },
                        title: Text('شركات برمجة وحلول متكاملة'),
                        subtitle: Text('عدد جهات الاتصال 20'),
                        leading: Icon(
                          Icons.contacts,
                          color: ColorPrimary,
                          size: 32,
                        ),
                        trailing: Icon(Icons.delete, color: Colors.redAccent),
                      ),
                    );
                  }),
            )
          ]),
        ),
      ),
    ));
  }
}
