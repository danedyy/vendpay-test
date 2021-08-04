import 'package:flutter/material.dart';
import 'package:vendpay/util/my_text.dart';
import 'package:vendpay/util/space.dart';
import 'package:vendpay/util/util.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Container(
        height: 123,
        // color: Colors.black,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xff27E0A6),
                  Color(0xff20C1F3),
                ])),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: -10,
              child: Image.asset(
                'assets/img/VEND.png',
                // color: ACCENT_COLOR,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: S.rW(context, .05), vertical: S.rH(context, .01)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kNormalText(
                          text: '9:30 pm - 23 Feb',
                          size: 12,
                          color: Colors.white),
                      S.w(S.rW(context, .011)),
                      Chip(
                        backgroundColor: Colors.white,
                        label: Row(
                          children: [
                            Icon(
                              Icons.add,
                              color: Theme.of(context).accentColor,
                              size: 15,
                            ),
                            kNormalText(
                              text: 'Add Money',
                              size: 11,
                              color: Theme.of(context).accentColor,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  kNormalText(
                      text: 'Cash Available', size: 14, color: Colors.white),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        kNormalText(
                            text: '₦ ',
                            size: 32,
                            useRoboto: true,
                            color: Colors.white),
                        kNormalText(
                            text: '200,000', size: 32, color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
