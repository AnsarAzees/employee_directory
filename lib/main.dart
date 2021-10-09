import 'package:employee_directory/app/routes/initial_binding.dart';
import 'package:employee_directory/utils/easy_loading_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  runApp(
    GetMaterialApp(
      title: "Employee directory",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      smartManagement: SmartManagement.full,
      initialBinding: InitialBinding(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      builder: EasyLoading.init(),
    ),
  );
  configEasyLoading();
}
