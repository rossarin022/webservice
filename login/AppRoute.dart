import 'package:flutter/material.dart';
import 'package:miniproject/login/Type.dart';
import 'package:miniproject/login/home.dart';
import 'package:miniproject/login/login.dart';
import 'package:miniproject/login/register.dart';




class AppRoute {
  static const homeRoute = 'home';
  static const loginRoute = 'login';
  static const registerRoute = 'register';
  static const typeRoute = 'type';




  final _route = <String, WidgetBuilder>{
    homeRoute: (context) => HomeScreen(),
    loginRoute: (context) => LoginScreen(),
    registerRoute: (context) => RegisterScreen(),
    typeRoute: (context) => TypeScreen(),

  };

  get getAll => _route;
} //end class
