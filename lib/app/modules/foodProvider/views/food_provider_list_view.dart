import 'package:app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodProviderListView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(itemBuilder: (context, index) {
      return InkWell(
        onTap: () {
          Get.toNamed(Routes.FoodProviderDetailView);
        },
        child: Card(
          child: Column(
            children: [
              Image.asset('asset/food.png'),
              Row(
                children: [
                  Flexible(
                    child: ListTile(
                      title: Text('اسم'),
                      subtitle: Text('مطعم يم'),
                    ),
                  ),
                  Flexible(
                    child: ListTile(
                      title: Text('عدد العروض'),
                      subtitle: Text('5'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }));
  }
}
