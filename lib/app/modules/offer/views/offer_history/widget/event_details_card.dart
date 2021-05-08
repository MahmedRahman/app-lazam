import 'package:app/app/modules/offer/views/offer_list/widget/offer_card.dart';
import 'package:flutter/material.dart';

class EventDetailsCard extends StatelessWidget {
  const EventDetailsCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
         // Navigator.pushNamed(context, RouteEventDetailScreen);
        },
        child: Card(
          child: Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CardLabal(
                  offerTitle: 'أسم الايفانت',
                  slectIcon: Icons.label,
                ),
                CardLabal(
                  offerTitle: 'تاريخ الايفانت',
                  slectIcon: Icons.date_range,
                ),
                 CardLabal(
                  offerTitle: 'نوع الايفانت',
                  slectIcon: Icons.category,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
