import 'package:dio/dio.dart';
import 'package:employee_directory/app/data/employee_provider.dart';
import 'package:employee_directory/services/http_client.dart';
import 'package:employee_directory/services/local_storage.dart';
import 'package:get/get.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocalStorage>(() => LocalStorageImpl());
    Get.put<EmployeeStore>(EmployeeStore(Get.find<LocalStorage>()),
        permanent: true);
    Get.put<HttpClient>(HttpClientImpl(Dio()), permanent: true);
  }
}
