import 'package:flutter/material.dart';
import 'package:flutterfire_login_ui/app/routes/app_pages.dart';
import 'package:flutterfire_login_ui/di.dart';
import 'package:flutterfire_login_ui/utils/constant.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) => GetMaterialApp(
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        enableLog: true,
        debugShowCheckedModeBanner: false,
        title: 'Login Screen',
        theme: ThemeData(
            scaffoldBackgroundColor: kBackgroundColor,
            textTheme: Theme.of(context).textTheme.apply(
                  bodyColor: kPrimaryColor,
                  fontFamily: "Montserrat",
                )),
      ),
    );
  }
}
