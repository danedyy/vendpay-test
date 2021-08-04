import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 23),
      alignment: Alignment.center,
      child: Stack(
        children: [
          Positioned(
              right: 2,
              child: Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).accentColor),
              )),
          Icon(
            Icons.notifications_outlined,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
