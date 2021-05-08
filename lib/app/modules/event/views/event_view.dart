import 'package:app/app/routes/app_pages.dart';
import 'package:app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/app/modules/event/controllers/event_controller.dart';

class EventView extends GetView<EventController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: new FloatingActionButton(
          heroTag: null,
          onPressed: () {
            Get.toNamed(Routes.EventAddView);
          },
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Card(
                elevation: 2,
                color: Color(0xFFF3F4E1),
                child: Column(
                  children: [
                    ListTile(
                      onTap: (){
                        Get.toNamed(Routes.EventDetailView);
                      },
                      title: Text('إسم الإيفنت'),
                      subtitle: Text('عيد ميلاد( العائلة )'),
                      trailing: Text('Dec 17 , 2020'),
                      leading: Icon(
                        Icons.event,
                        size: 32,
                        color: ColorPrimary,
                      ),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: Icon(
                            Icons.share,
                            color: ColorPrimary,
                          ),
                          onPressed: () {
                            Get.toNamed(Routes.EventShareView); 
                          },
                        ),
                        FlatButton(
                          child: Icon(Icons.delete, color: ColorPrimary),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }));
  }
}
