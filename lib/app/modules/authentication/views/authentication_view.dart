import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:app/app/modules/authentication/controllers/authentication_controller.dart';

class AuthenticationView extends GetView<AuthenticationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AuthenticationView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AuthenticationView is working', 
          style: TextStyle(fontSize:20),
        ),
      ),
    );
  }
}
  