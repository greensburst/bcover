import 'package:flutter/material.dart';
import '../model/av.dart';
import 'package:dio/dio.dart';
import 'package:permission_handler/permission_handler.dart';

get() async {

  PermissionStatus permission = await PermissionHandler().checkPermissionStatus(PermissionGroup.storage);
  if (permission == PermissionStatus.granted) {

  } else {
    
    await PermissionHandler().requestPermissions([PermissionGroup.storage]);
  }

  Response response;
  Dio dio = new Dio();
  response = await dio.get("http://api.bilibili.com/x/web-interface/view", queryParameters: {"aid": av,});
  await dio.download(response.data["data"]["pic"],"/storage/emulated/0/DCIM/" + "av" + av + ".jpg");
}

