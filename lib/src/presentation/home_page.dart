import 'package:flutter/material.dart';
import 'package:yatp/src/containers/user_container.dart';
import 'package:yatp/src/models/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: UserContainer(
        builder: (BuildContext context, AppUser user) {
          return Container(
            child: Center(child: Text(user.name)),
          );
        },
      ),
    );
  }
}
