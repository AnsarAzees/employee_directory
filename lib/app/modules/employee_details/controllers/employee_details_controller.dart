import 'package:employee_directory/app/modules/home/models/employee_details.dart';
import 'package:get/get.dart';

class EmployeeDetailsController extends GetxController {
  final employeeDetails = EmployeeDetails().obs;
  static EmployeeDetailsController get to => Get.find();

  //for generating address string
  String get address {
    var addressString = "";
    if (employeeDetails.value.address != null) {
      if (employeeDetails.value.address?.city != null) {
        addressString += employeeDetails.value.address?.city ?? "";
      }
      if (employeeDetails.value.address?.street != null) {
        addressString += ", " + (employeeDetails.value.address?.street ?? "");
      }
      if (employeeDetails.value.address?.city != null) {
        addressString += ", " + (employeeDetails.value.address?.city ?? "");
      }
      if (employeeDetails.value.address?.suite != null) {
        addressString += ", " + (employeeDetails.value.address?.suite ?? "");
      }
      if (employeeDetails.value.address?.zipcode != null) {
        addressString += ", " + (employeeDetails.value.address?.zipcode ?? "");
      }
    }
    return addressString;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
