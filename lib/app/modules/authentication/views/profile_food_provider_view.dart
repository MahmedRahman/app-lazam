import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

class ProfileFoodProviderView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProfileFoodProviderView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProfileFoodProviderView is working', 
          style: TextStyle(fontSize:20),
        ),
      ),
    );
  }
}
  