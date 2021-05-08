import 'package:app/app/modules/offer/controllers/offer_controller.dart';
import 'package:app/app/modules/offer/model/offer_model.dart';
import 'package:app/app/modules/offer/views/offer_list/widget/offer_card.dart';
import 'package:app/app/routes/app_pages.dart';
import 'package:app/utils/theme.dart' as theme;
import 'package:app/widget/CustomSearchField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Body extends GetView<OfferController> {
  OfferController offerContraller = Get.put<OfferController>(OfferController());

 //final GlobalKey<ScaffoldState> scaffoldKey;

  //Body(this.scaffoldKey);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSearchField(),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  
                },
                child: Icon(
                  Icons.circle,
                  color: theme.ColorPrimary,
                ),
              ),
              InkWell(
                onTap: () {
                 
                },
                child: Icon(
                  Icons.circle,
                  color: Colors.red,
                ),
              ),
              InkWell(
                onTap: () {
                 
                },
                child: Icon(
                  Icons.done_all,
                  color: theme.ColorPrimary,
                ),
              )
            ],
          ),
        ),
        Divider(
          color: theme.ColorPrimary,
        ),
        Expanded(
          child: Obx(
            () {
              return ListView.builder(
                itemCount: offerContraller.offerListModel.length,
                itemBuilder: (context, index) {
                  OfferModel offerModel =
                      offerContraller.offerListModel.elementAt(index);

                  return OfferItem(
                    offerTitle: offerModel.name,
                    offerPrice: offerModel.price.toString(),
                    status: offerModel.status == 1 ? false : true,
                    onTap: () {
                      //Get.toNamed(Routes.FoodProviderOfferCreate, arguments: offerModel);
                    },
                    onDelete: (){
                      offerContraller.deleteOffer(offerModel.id);
                      Get.back();
                    },
                  );

                  //
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
