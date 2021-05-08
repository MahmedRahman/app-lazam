import 'package:app/utils/theme.dart' as theme;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OfferItem extends StatelessWidget {
  final Function onTap;
  final Function onDelete;
  final bool status;
  final String offerTitle;
  final String offerPrice;

  const OfferItem({
    Key key,
    this.onTap,
    this.status = true,
    this.offerTitle = 'أسم العرض',
    this.offerPrice = 'سعر العرض', 
    this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          margin: EdgeInsets.all(2),
          clipBehavior: Clip.antiAlias,
          elevation: 2,
          child: Stack(
            children: [
              Positioned(
                left: 10,
                child: Container(
                  width: 40,
                  height: 40,
                  color: status ? Colors.red[300] : Colors.green[300],
                ),
              ),
              Column(
                children: [
                  ListTile(
                    title: CardLabal(
                      offerTitle: offerTitle,
                      slectIcon: Icons.restaurant_menu,
                    ),
                    subtitle: CardLabal(
                      offerTitle: offerPrice,
                      slectIcon: Icons.money,
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: theme.ColorPrimary,
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      TextButton.icon(
                        onPressed: () {
                          // Respond to button press
                         // Navigator.pushNamed(context, RouteOfferHistoryScreen);
                        },
                        icon: Icon(
                          Icons.history,
                          size: 18,
                          color: theme.ColorPrimary,
                        ),
                        label: Text(
                          "عمليات سابقة",
                          style: theme.StyleText[2],
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          // Respond to button press
                          return showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: AlertDialog(
                                    title: Text("حذف"),
                                    content: Text("هل تريد حذف العرض"),
                                    actions: [
                                      FlatButton(
                                        
                                        child: Text("نعم"),
                                        onPressed: onDelete,
                                      ),
                                      FlatButton(
                                        child: Text("لا"),
                                        onPressed: () {
                                          Get.back();
                                        },
                                      )
                                    ],
                                  ),
                                );
                              });
                        },
                        icon: Icon(
                          Icons.delete,
                          size: 18,
                          color: Colors.red[300],
                        ),
                        label: Text(
                          "حذف",
                          style: theme.StyleText[2],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardLabal extends StatelessWidget {
  const CardLabal({
    Key key,
    @required this.offerTitle,
    this.slectIcon,
  }) : super(key: key);

  final String offerTitle;
  final IconData slectIcon;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              slectIcon,
              color: theme.ColorPrimary,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              offerTitle,
              style: theme.StyleText[2],
            ),
          ],
        ),
      ),
    );
  }
}
