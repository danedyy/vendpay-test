import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      // color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/img/home-smile.png'),
          SvgPicture.asset(
            'assets/img/vend_dot.svg',
          ),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(
              'https://i.pravatar.cc/300/profile',
            ),
          ),
        ],
      ),
    );
  }
}
