import 'package:flutter/material.dart';
import 'package:vendpay/util/my_text.dart';
import 'package:vendpay/util/navigation.dart';
import 'package:vendpay/util/space.dart';

import 'activity_details.dart';

class ActivityCard extends StatelessWidget {
  final index;
  const ActivityCard({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Nav.navPush(context: context, child: ActivityDetails()),
      child: Container(
        height: 75,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/300/$index'),
            ),
            S.w(10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: kNormalText(text: 'Oluwaleke Olorunda'),
                  ),
                  S.h(5),
                  kNormalText(
                    text: '23 Feb at 9:30 pm',
                    color: Color(0xff8B90A1),
                  ),
                ],
              ),
            ),
            S.w(10),
            Row(
              children: [
                Row(
                  children: [
                    kBoldText(
                        text: '₦ ',
                        fontWeight: FontWeight.w700,
                        useRoboto: true,
                        size: 16),
                    kBoldText(
                        text: '5,450', fontWeight: FontWeight.w700, size: 16),
                  ],
                ),
                S.w(10),
                Card(
                  shape: CircleBorder(),
                  color: Theme.of(context).accentColor.withOpacity(.15),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.arrow_back,
                      size: 15,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
