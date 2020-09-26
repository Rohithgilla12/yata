import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:yatp/src/actions/index.dart';
import 'package:yatp/src/containers/user_container.dart';
import 'package:yatp/src/models/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static GlobalKey previewContainer = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final RenderRepaintBoundary boundary = previewContainer.currentContext.findRenderObject();
          final ui.Image image = await boundary.toImage(pixelRatio: 2);

          final ByteData byteData = await image.toByteData(format: ui.ImageByteFormat.png);
          StoreProvider.of<AppState>(context).dispatch(SetWallpaper(byteData));
        },
        child: const Icon(Icons.add),
      ),
      body: UserContainer(
        builder: (BuildContext context, AppUser user) {
          return RepaintBoundary(
            key: previewContainer,
            child: Container(
              child: Center(
                child: Text('Test Gilla $user'),
              ),
            ),
          );
        },
      ),
    );
  }
}
