import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_upload/src/pages/image_upload.dart';
import 'package:profile_upload/src/pages/login_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: LoginPage(), debugShowCheckedModeBanner: false);
  }
}
