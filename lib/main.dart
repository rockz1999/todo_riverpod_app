import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'database/db.export.dart';
import 'screens/screens.export.dart';
import 'utils/constants.export.dart';

void main() async {
  await DB().initDatabase();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: StringConstants.APPNAME,
      debugShowCheckedModeBanner: false,
      smartManagement: SmartManagement.keepFactory,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          scaffoldBackgroundColor: Colors.grey[300]),
      home: const Home(),
      locale: const Locale('en'),
    );
  }
}
