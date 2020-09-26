import 'dart:io';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';
import 'package:wallpaper_manager/wallpaper_manager.dart';

class StorageApi {
  Future<String> getAndSetWallPaper(ByteData byteData) async {
    final Uint8List pngBytes = byteData.buffer.asUint8List();
    final Directory path = await getApplicationDocumentsDirectory();

    final File file = File('${path.path}/test.png');
    file.writeAsBytesSync(pngBytes);

    const int location = WallpaperManager.BOTH_SCREENS;
    return await WallpaperManager.setWallpaperFromFile(file.path, location);
  }
}
