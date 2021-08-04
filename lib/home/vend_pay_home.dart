import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:vendpay/home/presentation/activity/activity.dart';
import 'package:vendpay/home/presentation/activity/activity_card.dart';
import 'package:vendpay/home/presentation/widgets/explore.dart';
import 'package:vendpay/home/presentation/widgets/wallet_card.dart';
import 'package:vendpay/bottom_nav_index.dart';
import 'package:vendpay/util/my_text.dart';
import 'package:vendpay/util/navigation.dart';

import 'package:vendpay/widget/notification_icon.dart';

class VendPayHome extends StatelessWidget {
  const VendPayHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/img/VendPay.png'),
        actions: [NotificationIcon()],
      ),
      bottomNavigationBar: BottomNav(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            WalletCard(),
            Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(23),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        kBoldText(
                          text: 'Activity',
                          fontWeight: FontWeight.w600,
                          size: 18,
                        ),
                        InkWell(
                          // onTap: () => Nav.navPush(
                          //     context: context, child: ActivityPage()),
                          onTap: () => Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration: Duration(milliseconds: 500),
                              reverseTransitionDuration:
                                  Duration(milliseconds: 500),
                              pageBuilder: (_, __, ___) => ActivityPage(),
                            ),
                          ),
                          child: Row(
                            children: [
                              kNormalText(
                                  text: 'View all',
                                  color: Color(0xff8B90A1),
                                  size: 14),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: Color(0xff8B90A1),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                Hero(
                  tag: 'activity',
                  // createRectTween: _createRectTween,
                  child: Container(
                    height: 390,
                    // color: Colors.amber,
                    child: Material(
                      color: Colors.transparent,
                      child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return ActivityCard(index: index);
                          },
                          separatorBuilder: (context, index) => Divider(
                                height: 2,
                              ),
                          itemCount: 5),
                    ),
                  ),
                )
              ],
            ),
            ExploreCard(),
          ],
        ),
      ),
    );
  }
}
