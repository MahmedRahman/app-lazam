import 'package:app/app/modules/foodProvider/controllers/food_provider_controller.dart';
import 'package:app/services/services.dart';
import 'package:app/utils/icons.dart';
import 'package:app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart'; 



class FoodProviderView extends GetView<FoodProviderController> {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
var selectIndex = 1;
  @override
  Widget build(BuildContext context) {

 return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        key: _scaffoldKey,
        body: IndexedStack(
          index: selectIndex,
          children: [
           // NotifationScreen(),
            //ProfileViewScreen(),
            //NotifationScreen(),
           // NotifationScreen(),
           // OfferListScreen(),
            //SelectOfferScreen(),
          ],
        ),
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
                selectIndex = PageName.Notifation.index;
               
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Icon(Icons.notifications_active),
              ),
            ),
            InkWell(
              onTap: () {
                Get.find<Services>().signOut();
                //Navigator.pushNamed(context, RouteSignInScreen);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Icon(
                  Icons.logout,
                  textDirection: TextDirection.ltr,
                ),
              ),
            )
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
                        leading: Icon(
                          Icons.local_offer,
                          color: ColorPrimary,
                        ),
                        title: Text(
                          'قائمة العروض',
                          style: StyleText[3],
                        ),
                        onTap: () {
                          /*
                          setState(() {
                            selectIndex = PageName.OfferList.index;
                            Navigator.pop(context);
                          });
                          */
                        },
                      ),
                      ListTile(
                        dense: true,
                        leading: Icon(
                          Icons.restaurant_menu,
                          color: ColorPrimary,
                        ),
                        title: Text(
                          'قائمة الطالبات',
                          style: StyleText[3],
                        ),
                        onTap: () {
                          /*
                          setState(() {
                            selectIndex = PageName.SelectOffer.index;

                            Navigator.pop(context);
                          });
                          */
                        },
                      ),
                      ListTile(
                        dense: true,
                        leading: Icon(
                          Icons.notifications,
                          color: ColorPrimary,
                        ),
                        title: Text(
                          'الإشعارات',
                          style: StyleText[3],
                        ),
                        onTap: () {
                          /*
                          setState(() {
                            selectIndex = PageName.Notifation.index;

                            Navigator.pop(context);
                          });
                          */
                        },
                      ),
                      ListTile(
                        dense: true,
                        leading: Icon(
                          Icons.contact_page,
                          color: ColorPrimary,
                        ),
                        title: Text(
                          'الملف الشخصى',
                          style: StyleText[3],
                        ),
                        onTap: () {
                          /*
                          setState(() {
                            selectIndex = PageName.Profile.index;

                            Navigator.pop(context);
                          });
                          */
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorPrimary,
          unselectedItemColor: ColorAccent,
          unselectedLabelStyle: StyleText[6],
          selectedLabelStyle: StyleText[6],
          selectedItemColor: Colors.lime,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              label: 'العروض',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.restaurant_menu),
              label: 'طلبات',
            ),
          ],
          onTap: (index) {
            switch (index) {
              case 0:
                selectIndex = PageName.OfferList.index;
                
                break;
              case 1:
                selectIndex = PageName.SelectOffer.index;
              
                break;

              default:
            }
          },
        ),
      ),
    );


  }
}



enum PageName {
  Notifation,
  Profile,
  About,
  ContactUs,
  OfferList,
  SelectOffer,
  HistoryOffer
}

  