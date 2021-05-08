import 'package:app/app/modules/contact/views/contact_view.dart';
import 'package:app/app/modules/event/views/event_view.dart';
import 'package:app/app/modules/eventMacker/controllers/event_controller.dart';
import 'package:app/app/modules/foodProvider/views/food_provider_list_view.dart';
import 'package:app/app/routes/app_pages.dart';
import 'package:app/services/services.dart';
import 'package:app/utils/constants.dart';
import 'package:app/utils/icons.dart';
import 'package:app/utils/theme.dart';
import 'package:app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EventMackerView extends GetView<EventMackerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'الرئيسية',
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: ColorPrimary,
        elevation: 2,
        actions: [
          InkWell(
            onTap: () {
              Utils().showDialog(
                AppName,
                'تم استيراد جهات الاتصال',
                () {
                  Get.back();
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Icon(
                Icons.import_contacts,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.NOTIFACTION);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Icon(Icons.notifications_active),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: ColorAccent),
              child: SvgPicture.asset(logo[0]),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    ListTile(
                      dense: true,
                      leading: SvgPicture.asset('asset/icons/icon_acount.svg',
                          color: ColorPrimary),
                      title: Text(
                        'Contacts'.tr,
                        style: StyleText[3],
                      ),
                      onTap: () {
                        controller.selectedIndex(0);
                        Get.back();
                      },
                    ),
                    ListTile(
                      dense: true,
                      leading: SvgPicture.asset('asset/icons/icon_event.svg'),
                      title: Text(
                        'event'.tr,
                        style: StyleText[3],
                      ),
                      onTap: () {
                        controller.selectedIndex(1);
                        Get.back();
                      },
                    ),
                    ListTile(
                      dense: true,
                      leading: SvgPicture.asset(
                        'asset/icons/icon_restaurants.svg',
                        color: ColorPrimary,
                      ),
                      title: Text(
                        'Restaurants'.tr,
                        style: StyleText[3],
                      ),
                      onTap: () {
                   //     controller.selectedIndex(2);
                  //      Get.back();
                      },
                    ),
                    ListTile(
                      dense: true,
                      leading: Icon(
                        Icons.contact_page,
                        color: ColorPrimary,
                      ),
                      title: Text(
                        'profile'.tr,
                        style: StyleText[3],
                      ),
                      onTap: () {
                        Get.back();
                        Get.toNamed(Routes.ProfileEventMakerView);
                      },
                    ),
                    ListTile(
                      dense: true,
                      leading: Icon(
                        Icons.logout,
                        color: ColorPrimary,
                      ),
                      title: Text(
                        'logout'.tr,
                        style: StyleText[3],
                      ),
                      onTap: () {
                        Get.toNamed(Routes.Splash);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          backgroundColor: Color(0xff6CA044),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.yellow,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'asset/icons/icon_event.svg',
                  color: Colors.white,
                ),
                label: 'Contacts'.tr),
            BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: SvgPicture.asset('asset/icons/icon_event.svg',
                  color: Colors.white),
              label: 'event'.tr,
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.blue,
                icon: SvgPicture.asset('asset/icons/icon_restaurants.svg',
                    color: Colors.white),
                label: 'Restaurants'.tr),
          ],
          onTap: (index) {
            if (index == 2) {
              Utils().showDialog(AppName, 'جارى العمل فى هذا القسم', () {
                Get.back();
              });
            } else {
              controller.selectedIndex(index);
            }
          },
        );
      }),
      body: Obx(() {
        return IndexedStack(
          index: controller.selectedIndex.value,
          children: [ContactView(), EventView(), FoodProviderListView()],
        );
      }),
    );
  }
}
