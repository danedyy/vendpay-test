import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Text kNormalText(
    {@required String text,
    Color color = Colors.black,
    TextOverflow overflow,
    double size = 14,
    int maxLine,
    bool useRoboto = false,
    TextAlign textAlign}) {
  return Text(
    text,
    textAlign: textAlign,
    overflow: overflow,
    maxLines: maxLine,
    style: TextStyle(
        color: color, fontSize: size, fontFamily: useRoboto ? 'Roboto' : null),
  );
}

Text kBoldText(
    {@required String text,
    Color color = Colors.black,
    TextAlign textAlign,
    Key key,
    int maxLine,
    TextOverflow overflow,
    double size = 16,
    bool useRoboto = false,
    @required FontWeight fontWeight}) {
  return Text(
    text,
    key: key,
    textAlign: textAlign,
    maxLines: maxLine,
    overflow: overflow,
    style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        fontFamily: useRoboto ? 'Roboto' : null),
  );
}
