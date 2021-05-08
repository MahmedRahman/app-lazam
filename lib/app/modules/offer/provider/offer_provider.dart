import 'dart:convert';
import 'package:app/app/modules/offer/model/offer_model.dart';
import 'package:app/services/services.dart';

import 'package:app/utils/constants.dart';
import 'package:get/get.dart';

class OfferProvider extends GetConnect {

  var userSerivces = Get.find<Services>();

  Future<String> getOffer() async {
    // print(header);
    Response response = await get(Constants.baesUrl + '/api/Offer/Get',
        headers: userSerivces.getUserHeader());
    if (response.status.hasError) {
      return Future.error(response.statusText);
    } else {
      return response.bodyString;
    }
  }

  Future addOffer(OfferModel offerModel) async {
    Response response = await post(
        Constants.baesUrl + '/api/Offer/Add',
        jsonEncode({
          "Name": offerModel.name,
          "Price": offerModel.price,
          "Description": offerModel.description
        }),
        headers: userSerivces.getUserHeader());


    if (response.status.hasError) {
      return Future.error(response.statusText);
    } else {
      return response.bodyString.toString();
    }
  }

  Future editOffer(OfferModel offer) async {
    Response response = await post(
        Constants.baesUrl + '/api/Offer/Edit', offerModelToJson(offer),
        headers: userSerivces.getUserHeader());

    if (response.status.hasError) {
      return Future.error(response.statusText);
    } else {
      return response.bodyString;
    }
  }

  Future deleteOffer(int id) async {
    Response response = await delete(Constants.baesUrl + 'api/Offer/Delete/$id',
        headers: userSerivces.getUserHeader());

    if (response.status.hasError) {
      return Future.error(response.statusText);
    } else {
      return response.bodyString;
    }
  }
}
