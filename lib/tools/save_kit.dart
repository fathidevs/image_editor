import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class SaveKit {
  static String path = "storage/emulated/0/Pictures";
  static String folderName = "myImgEditor";
  static String kitName = "dlskit_";
  static String kitFormat = "png";

  final int millisec;
  final Future<Uint8List> kit;

  SaveKit({
    required this.millisec,
    required this.kit,
  });

  Future<String> _createFolder() async {
    final dir = Directory('${(Platform.isAndroid ? Directory(path) //FOR ANDROID
            : await getApplicationSupportDirectory() //FOR IOS
        ).path}/$folderName');
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }
    if ((await dir.exists())) {
      return dir.path;
    } else {
      dir.create();
      return dir.path;
    }
  }

  saveImg() async {
    String folder = await _createFolder();

    await File(
      "$folder/$kitName$millisec.$kitFormat",
    ).writeAsBytes(await kit);
  }
}
