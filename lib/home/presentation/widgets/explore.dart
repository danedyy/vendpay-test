import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vendpay/util/my_text.dart';
import 'package:vendpay/util/space.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(23),
          child: kBoldText(
            text: 'Explore',
            fontWeight: FontWeight.w600,
            size: 18,
          ),
        ),
        Container(
          height: 200,
          color: Color(0xffF9FDFF),
          padding: EdgeInsets.symmetric(
              horizontal: S.rW(context, .05), vertical: S.rH(context, .01)),
          child: Row(
            children: [
              Expanded(
                // fit: BoxFit.scaleDown,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kBoldText(
                        text: 'Explore places where',
                        fontWeight: FontWeight.w700,
                        size: 20,
                        color: Color(0xff20C1F3),
                      ),
                      kBoldText(
                        text: 'VendPay is accepted',
                        fontWeight: FontWeight.w700,
                        size: 20,
                        color: Color(0xff20C1F3),
                      ),
                      S.h(10),
                      kNormalText(
                        text: 'VendPay is accepted in over',
                        size: 12,
                      ),
                      kNormalText(
                        text: '20,000 store across the country',
                        size: 12,
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(

                  // fit: BoxFit.scaleDown,
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset('assets/img/explore.svg')))
            ],
          ),
        )
      ],
    );
  }
}
