import 'dart:convert';

import 'package:employee_directory/app/data/employee_provider.dart';
import 'package:employee_directory/app/modules/home/models/employee_details.dart';
import 'package:employee_directory/services/http_client.dart';
import 'package:employee_directory/utils/urls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final HttpClient httpClient;
  HomeController(this.httpClient);
  static HomeController get to => Get.find();

  // saves search query
  final query = "".obs;

  // returns filtered employee list
  List<EmployeeDetails> employeeList() {
    var employeesListData = EmployeeStore.to.employees.value;
    if (employeesListData != null && query != "")
      employeesListData = employeesListData.where((element) {
        return (element.name?.contains(query) ?? false) ||
            (element.email?.contains(query) ?? false);
      }).toList();
    return employeesListData ?? [];
  }

  @override
  void onInit() async {
    await EmployeeStore.to.getEmployeeDetails();

    if (EmployeeStore.to.employees.value == null ||
        (EmployeeStore.to.employees.value != null &&
            EmployeeStore.to.employees.value!.isEmpty)) {
      getEmployeeDetailsFromAPI();
    }
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  // get employee details from api
  void getEmployeeDetailsFromAPI() async {
    try {
      EasyLoading.show(status: 'Loading');
      var response = await httpClient.get(
        URLs.getEmployeeDataUrl,
        queryParameters: {"": ""},
      );
      final jsonString = jsonEncode(response);
      final jsonMap = jsonDecode(jsonString);
      for (var value in jsonMap) {
        await EmployeeStore.to
            .addEmployeeDetails(EmployeeDetails.fromJson(value));
      }
      await EmployeeStore.to.getEmployeeDetails();
      EasyLoading.dismiss(animation: true);
    } catch (e) {
      EasyLoading.dismiss(animation: true);
      Get.snackbar('Error', e.toString(),
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
