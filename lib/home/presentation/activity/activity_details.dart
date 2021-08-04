import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vendpay/util/my_text.dart';
import 'package:vendpay/util/space.dart';

class ActivityDetails extends StatelessWidget {
  const ActivityDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: kNormalText(text: 'Details', size: 24),
        iconTheme: IconThemeData(color: Color(0xff8B90A1)),
        // automaticallyImplyLeading: false,
        // leading: Icon(
        //   Icons.arrow_back,
        //   color: Color(0xff8B90A1),
        // ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(23),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: S.rW(context, .04), vertical: S.rW(context, 0.08)),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(6)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  kNormalText(
                    text: 'Transaction Type',
                    color: Color(0xff8B90A1),
                  ),
                  S.h(8),
                  Row(
                    children: [
                      kBoldText(
                          text: 'Credit',
                          fontWeight: FontWeight.w700,
                          size: 16),
                      S.w(10),
                      Card(
                        shape: CircleBorder(),
                        color: Theme.of(context).accentColor.withOpacity(.15),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.arrow_back,
                            size: 10,
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              S.h(45),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        kNormalText(
                          text: 'Date',
                          color: Color(0xff8B90A1),
                        ),
                        S.h(8),
                        kBoldText(
                            text: '20th Mar 2019',
                            fontWeight: FontWeight.w700,
                            size: 16),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        kNormalText(
                          text: 'Time',
                          color: Color(0xff8B90A1),
                        ),
                        S.h(8),
                        kBoldText(
                            text: '8:45 PM',
                            fontWeight: FontWeight.w700,
                            size: 16),
                      ],
                    ),
                  ),
                ],
              ),
              S.h(45),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        kNormalText(
                          text: 'From',
                          color: Color(0xff8B90A1),
                        ),
                        S.h(8),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  NetworkImage('https://i.pravatar.cc/300/0'),
                            ),
                            S.w(10),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child:
                                        kNormalText(text: 'Oluwaleke Olorunda'),
                                  ),
                                  S.h(5),
                                  kNormalText(
                                    text: '2056HTGDKPOL90',
                                    color: Color(0xff8B90A1),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  kNormalText(
                      text: 'View profile',
                      color: Theme.of(context).accentColor,
                      size: 12),
                ],
              ),
              S.h(45),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  kNormalText(
                    text: 'Narration',
                    color: Color(0xff8B90A1),
                  ),
                  S.h(8),
                  kBoldText(
                      text:
                          'Personal loan payment, please let me know what is left.',
                      fontWeight: FontWeight.w700,
                      size: 16),
                ],
              ),
              S.h(45),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        kNormalText(
                          text: 'Amount',
                          color: Color(0xff8B90A1),
                        ),
                        S.h(8),
                        Row(
                          children: [
                            kBoldText(
                                text: '₦ ',
                                fontWeight: FontWeight.w700,
                                useRoboto: true,
                                size: 16),
                            kBoldText(
                                text: '5,450.00',
                                fontWeight: FontWeight.w700,
                                size: 16),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      kNormalText(
                        text: 'Status',
                        color: Color(0xff8B90A1),
                      ),
                      S.h(8),
                      Card(
                        margin: EdgeInsets.zero,
                        color: Theme.of(context).accentColor.withOpacity(.1),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                          child: Center(
                            child: kNormalText(
                                text: 'PAID SUCCESSFULLY',
                                size: 12,
                                color: Theme.of(context).accentColor),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              S.h(45),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Chip(
                      // backgroundColor: Color(0xff8B90A1),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      shadowColor: Colors.transparent,
                      label: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.arrow_circle_down_outlined,
                            size: 20,
                            color: Color(0xff4F4F4F),
                          ),
                          S.w(8),
                          kNormalText(
                            text: 'Receipt',
                            color: Color(0xff4F4F4F),
                          )
                        ],
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
