import 'package:flutter/material.dart';
import 'package:yatp/src/containers/user_container.dart';
import 'package:yatp/src/models/index.dart';
import 'package:yatp/src/presentation/home_page.dart';
import 'package:yatp/src/presentation/login_page.dart';
import 'package:yatp/src/presentation/sign_up.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
        if (user != null) {
          if (user.isCreated) {
            return const HomePage();
          } else {
            return const SignUpPage();
          }
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
