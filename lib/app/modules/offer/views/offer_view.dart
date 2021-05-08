import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:app/app/modules/offer/controllers/offer_controller.dart';

class OfferView extends GetView<OfferController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OfferView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OfferView is working', 
          style: TextStyle(fontSize:20),
        ),
      ),
    );
  }
}
  