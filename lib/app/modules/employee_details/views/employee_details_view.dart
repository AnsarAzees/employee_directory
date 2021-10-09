import 'package:cached_network_image/cached_network_image.dart';
import 'package:employee_directory/app/components/value_display.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/employee_details_controller.dart';

class EmployeeDetailsView extends GetView<EmployeeDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() {
          return Text(
            controller.employeeDetails.value.name ?? "",
            style: TextStyle(color: Colors.black, fontSize: 30),
          );
        }),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Get.width,
              child: Hero(
                  tag: '${controller.employeeDetails.value.id}',
                  child: CachedNetworkImage(
                    imageUrl:
                        controller.employeeDetails.value.profileImage ?? "",
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Icon(Icons.account_circle),
                    errorWidget: (context, url, error) =>
                        Icon(Icons.account_circle),
                  )),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ValueDisplayWidget(
                      title: "Name",
                      value: controller.employeeDetails.value.name ?? "",
                    ),
                    ValueDisplayWidget(
                      title: "User name",
                      value: controller.employeeDetails.value.username ?? "",
                    ),
                    ValueDisplayWidget(
                      title: "Email",
                      value: controller.employeeDetails.value.email ?? "",
                    ),
                    ValueDisplayWidget(
                        title: "Address", value: controller.address),
                    ValueDisplayWidget(
                      title: "Website",
                      value: controller.employeeDetails.value.website ?? "",
                    ),
                    ValueDisplayWidget(
                      title: "Company name",
                      value:
                          controller.employeeDetails.value.company?.name ?? "",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
