import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
 
class Navigation {
  static moveWithData(String routeName, Object arguments) {
    navigatorKey.currentState.pushNamed(routeName, arguments: arguments);
  }

  static move(String routeName){
    navigatorKey.currentState.pushNamed(routeName);
  }
 
  static back() => navigatorKey.currentState.pop();

  static clearMove(String routeName){
    navigatorKey.currentState.pushNamedAndRemoveUntil(routeName, (r) => false);
  }

  static clearMoveWithData(String routeName, Object arguments){
    navigatorKey.currentState.pushNamedAndRemoveUntil(routeName, (r) => false, arguments: arguments,);
  }
}