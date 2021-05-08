import 'package:app/app/modules/offer/views/offer_list/widget/body.dart';
import 'package:app/utils/theme.dart' as theme;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OfferListScreen extends StatelessWidget {
 // final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SafeArea(
        child: Body(),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'NewTag',
        onPressed: () {
          // Add your onPressed code here!
         // Get.toNamed(Routes.FoodProviderOfferCreate);
        },
        backgroundColor: theme.ColorPrimary,
        child: Icon(Icons.add),
      ),
    );
  }
}
