import 'package:app/app/modules/offer/controllers/offer_controller.dart';
import 'package:app/utils/theme.dart' as theme;
import 'package:app/widget/CustomSearchField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/event_details_card.dart';

class OfferHistoryScreen extends GetView<OfferController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('عمليات سابقة'),
        backgroundColor: theme.ColorPrimary,
        elevation: 2,
      ),
      body: Column(
        children: [
        
          CustomSearchField(),
          EventDetailsCard(),
          EventDetailsCard(),
        ],
      ),
    );
  }
}
