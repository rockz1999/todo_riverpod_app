import 'package:flutter/material.dart';
import '../utils/constants.export.dart';

AppBar lightAppbar({
  bool back = false,
  String? title,
  PreferredSizeWidget? bottomWidget,
}) {
  return AppBar(
    title: Text(
      title ?? StringConstants.APPNAME,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 22,
      ),
    ),
    automaticallyImplyLeading: back,
    centerTitle: true,
    bottom: bottomWidget,
  );
}
