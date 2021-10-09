import 'package:employee_directory/app/modules/home/models/employee_details.dart';
import 'package:employee_directory/services/local_storage.dart';
import 'package:get/get.dart';

class EmployeeStore extends GetxController {
  EmployeeStore(this._storage);

  static EmployeeStore get to => Get.find();

  final LocalStorage _storage;
//employee data found in this list
  final employees = Rxn<List<EmployeeDetails>>();

  @override
  void onInit() async {
    super.onInit();
    var values = await _storage.employeeDbHelper.getAllEmployees();
    employees.value = values;
  }

  // Add employee details to table
  Future<void> addEmployeeDetails(EmployeeDetails employee) async {
    await _storage.employeeDbHelper.insertEmployee(employee);
    return;
  }

  Future<void> getEmployeeDetails() async {
    employees.value = await _storage.employeeDbHelper.getAllEmployees();
    return;
  }
}
