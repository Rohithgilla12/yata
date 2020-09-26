import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:yatp/src/actions/auth/index.dart';
import 'package:yatp/src/actions/index.dart';
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
            child: Column(
              children: <Widget>[
                Center(
                  child: Text(user.name),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
