import 'package:app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodProviderDetailView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FoodProviderDetailView'.tr),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          ListTile(
            title: Text('الاسم'),
            subtitle: Text('مطعم يم'),
          ),
          ListTile(
            title: Text('البريد الاكترونى'),
            subtitle: Text('__@__'),
          ),
          ListTile(
            title: Text('العنوان'),
            subtitle: Text('Cairo -  Egypt . str . shopra'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'العــــروض',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: ColorPrimary),
            ),
          ),
          SizedBox(
            height: Get.height * .5,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      
                      title: Text('عرض تشيز تويت رول'),
                      subtitle: Text('الحالة'),
                      trailing: Text('1250'),
                      dense: false,
                      leading: Image.asset('asset/food.png'),
                      
                    ),
                  );
                }),
          ),
        ],
      )),
    );
  }
}
