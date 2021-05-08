import 'package:app/app/modules/offer/controllers/offer_controller.dart';
import 'package:app/app/modules/offer/model/offer_model.dart';
import 'package:app/utils/theme.dart';
import 'package:app/utils/validation.dart';
import 'package:app/widget/CustemTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:app/utils/icons.dart' as icons;
import 'package:get/get.dart';

class OfferAddScreen extends GetView<OfferController> {
  
  OfferController contraller = Get.find<OfferController>();
  final _formKey = GlobalKey<FormState>();
  OfferModel offerModel = Get.arguments;

  void initState() {
    if (offerModel != null) {
      contraller.nameTextController.text = offerModel.name;
      contraller.descriptionTextController.text = offerModel.description;
      contraller.priceTextController.text = offerModel.price.toString();
    } else {
      contraller.nameTextController.text = "";
      contraller.descriptionTextController.text = "";
      contraller.priceTextController.text = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    initState();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ألعرض'),
        backgroundColor: ColorPrimary,
        elevation: 2,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 30,
          ),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                CustemTextFormField(
                  hintText: 'العرض',
                  iconPath: icons.IconStart,
                  textEditingController: contraller.nameTextController,
                  keyboardType: TextInputType.name,
                  onValidator: (value) {
                    return Validation.checkEmpty(value);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                CustemTextFormField(
                  hintText: 'السعر',
                  iconPath: icons.IconPrice,
                  textEditingController: contraller.priceTextController,
                  keyboardType: TextInputType.number,
                  onValidator: (value) {
                    return Validation.checkEmpty(value);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                CustemTextFormField(
                  hintText: 'الوصف',
                  iconPath: icons.IconDescription,
                  textInputType: textType.textarea,
                  textEditingController: contraller.descriptionTextController,
                  keyboardType: TextInputType.text,
                  onValidator: (value) {
                    return Validation.checkEmpty(value);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'NewTag',
        onPressed: () {
          // Add your onPressed code here!
          if (_formKey.currentState.validate()) {
            FocusScope.of(context).unfocus();
          
            if (offerModel != null) {
              offerModel.name = contraller.nameTextController.text;
              offerModel.description =
                  contraller.descriptionTextController.text;
              offerModel.price =
                  double.parse(contraller.priceTextController.text);
              contraller.editOffer(offerModel);
            } else {
              contraller.addOffer();
            }
          }

          //Navigator.pop(_scaffoldKey.currentContext);
        },
        child: Icon(Icons.save),
        backgroundColor: Colors.green,
      ),
    );
  }
}
