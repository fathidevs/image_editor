import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class Permish {
  final BuildContext cx;
  Permish({required this.cx});

  Future<PermissionStatus> status(Permission permission) async {
    PermissionStatus status = await permission.request();

    return status;
  }

  getPermission(Permission permission) async {
    PermissionStatus isDenied = await status(permission);
    var v = await Permission.manageExternalStorage.request();
    toast("Permission: ${(v)}");
    if (isDenied.isDenied) {}
  }

  toast(msg) {
    ScaffoldMessenger.of(cx).showSnackBar(SnackBar(content: Text(msg)));
  }
}
