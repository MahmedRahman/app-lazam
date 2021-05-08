import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

class ProfileEventMakerView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProfileEventMakerView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProfileEventMakerView is working', 
          style: TextStyle(fontSize:20),
        ),
      ),
    );
  }
}
  