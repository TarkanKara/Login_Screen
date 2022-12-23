import 'package:flutter/material.dart';
import 'package:flutterfire_login_ui/app/routes/app_pages.dart';
import 'package:flutterfire_login_ui/di.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        enableLog: true,
        debugShowCheckedModeBanner: false,
        title: 'Login Screen',
        theme: ThemeData(primarySwatch: Colors.blue));
  }
}
