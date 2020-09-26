import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:yatp/src/init/init.dart';
import 'package:yatp/src/models/index.dart';
import 'package:yatp/src/presentation/app_routes.dart';

void main() {
  runApp(const YatpApp());
}

class YatpApp extends StatefulWidget {
  const YatpApp({Key key}) : super(key: key);

  @override
  _YatpAppState createState() => _YatpAppState();
}

class _YatpAppState extends State<YatpApp> with InitMixin<YatpApp> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Store<AppState>>(
      future: initFuture,
      builder: (BuildContext context, AsyncSnapshot<Store<AppState>> snapshot) {
        if (snapshot.hasData) {
          return StoreProvider<AppState>(
            store: snapshot.data,
            child: MaterialApp(
              title: 'Yatp App',
              routes: AppRoutes.routes,
              theme: ThemeData.dark(),
            ),
          );
        } else {
          if (snapshot.hasError) {
            print(snapshot.error);
          }

          return const MaterialApp(
            title: 'Yatp App',
            home: Scaffold(),
          );
        }
      },
    );
  }
}
