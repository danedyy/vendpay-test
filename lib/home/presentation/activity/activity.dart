import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vendpay/util/my_text.dart';

import 'activity_card.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: kNormalText(text: 'Activities', size: 24),
        iconTheme: IconThemeData(color: Color(0xff8B90A1)),
        // automaticallyImplyLeading: false,
        // leading: Icon(
        //   Icons.arrow_back,
        //   color: Color(0xff8B90A1),
        // ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Color(0xff8B90A1),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(23),
              child: kNormalText(
                  text: 'Today, 2nd Aug', size: 18, color: Color(0xff8B90A1)),
            ),
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
            ),
            Padding(
              padding: const EdgeInsets.all(23),
              child: kNormalText(
                  text: 'Yesterday, 1st Aug',
                  size: 18,
                  color: Color(0xff8B90A1)),
            ),
            Container(
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
            )
          ],
        ),
      ),
    );
  }
}
