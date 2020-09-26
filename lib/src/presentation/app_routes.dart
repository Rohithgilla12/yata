import 'package:flutter/material.dart';
import 'package:yatp/src/presentation/home.dart';
import 'package:yatp/src/presentation/login_page.dart';
import 'package:yatp/src/presentation/sign_up.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes {
  static const String login = '/login';
  static const String signUp = '/signUp';
  static const String home = '/';

  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (_) => const Home(),
    login: (_) => const LoginPage(),
    signUp: (_) => const SignUpPage(),
  };
}
