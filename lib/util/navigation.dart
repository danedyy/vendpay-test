import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Nav {
  static navPushAndReplace(
      {@required BuildContext context,
      Widget child,
      Function(dynamic val) callback}) {
    return Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => child,
        ),
        (Route<dynamic> route) => false).then((value) {
      callback(value);
    });
  }

  static navPush(
      {@required BuildContext context,
      @required Widget child,
      onValue(dynamic value)}) {
    return Navigator.push(
        context,
        CustomMaterialPageRoute(
          builder: (context) => child,
        )).then((value) {
      if (onValue != null) onValue(value);
    });
  }
}

class CustomMaterialPageRoute extends MaterialPageRoute {
  @protected
  bool get hasScopedWillPopCallback {
    return false;
  }

  CustomMaterialPageRoute({
    @required WidgetBuilder builder,
    RouteSettings settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
          builder: builder,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
        );
}
