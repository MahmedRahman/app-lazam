import 'dart:convert';

import 'package:app/app/modules/authentication/model/replay_model.dart';
import 'package:app/app/modules/offer/model/offer_model.dart';
import 'package:app/app/modules/offer/provider/offer_provider.dart';
import 'package:app/app/routes/app_pages.dart';
import 'package:app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OfferController extends GetxController {
  List<OfferModel> offerListModel = new List<OfferModel>().obs;

  TextEditingController nameTextController;
  TextEditingController descriptionTextController;
  TextEditingController priceTextController;

  @override
  void onInit() {
    nameTextController = new TextEditingController();
    descriptionTextController = new TextEditingController();
    priceTextController = new TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    getOffer();
    super.onReady();
  }

  getOffer() async {
    //Get.dialog(Center(child: CircularProgressIndicator()),
    //  barrierDismissible: false);

    await OfferProvider().getOffer().then((res) {
      // Get.back();
      List<dynamic> offersList = json.decode(res);
      offerListModel.clear();

      for (var i = 0; i < offersList.length - 1; i++) {
        OfferModel offerModel;
        offerModel = new OfferModel.fromJson(offersList.elementAt(i));
        offerListModel.add(offerModel);
      }
    }, onError: (err) {
      //  Get.back();
      Utils().showSnackBar('', err.toString());
    });
  }

  addOffer() async {
    Get.dialog(Center(child: CircularProgressIndicator()),
        barrierDismissible: false);

    await OfferProvider()
        .addOffer(
      new OfferModel(
        name: nameTextController.text,
        description: descriptionTextController.text,
        price: double.parse(priceTextController.text),
      ),
    )
        .then((value) {
      Get.back();

      Replay replay = Replay.fromJson(jsonDecode(value));
      if (replay.isSuccess) {
        Utils().showSnackBar('Save'.tr, 'Save Done'.tr, snackbarStatus: (val) {
          if (val == SnackbarStatus.CLOSED) {
            nameTextController.text = "";
            descriptionTextController.text = "";
            priceTextController.text = "";
            getOffer();
            Get.toNamed(Routes.FOOD_PROVIDER);
          }
        });
      } else {
        Get.back();
        Utils().showSnackBar('', replay.message);
      }
    }, onError: (err) {
      Get.back();
      Utils().showSnackBar('', err.toString());
    });
  }

  editOffer(OfferModel offerModel) async {
    Get.dialog(Center(child: CircularProgressIndicator()),
        barrierDismissible: false);

    await OfferProvider().editOffer(offerModel).then((value) {
      Get.back();

      Replay replay = Replay.fromJson(jsonDecode(value));
      if (replay.isSuccess) {
        getOffer();
        Get.toNamed(Routes.FOOD_PROVIDER);
      } else {
        Get.back();
        Utils().showSnackBar('', replay.message);
      }
    }, onError: (err) {
      Get.back();
      Utils().showSnackBar('', err.toString());
    });
  }

  deleteOffer(int id) async {
    Get.dialog(Center(child: CircularProgressIndicator()),
        barrierDismissible: false);

    await OfferProvider().deleteOffer(id).then((value) {
      Replay replay = Replay.fromJson(jsonDecode(value));
      if (replay.isSuccess) {
        Get.back();

        Utils().showSnackBar('delete'.tr, 'delete done'.tr,
            snackbarStatus: (val) {
          if (val == SnackbarStatus.CLOSED) {
            getOffer();
          }
          //print(val);
        });
      } else {
        Utils().showSnackBar('', replay.message.toString());
      }
    }, onError: (err) {
      Get.back();
      Utils().showSnackBar('', err.toString());
    });
  }
}
