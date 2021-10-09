import 'package:employee_directory/app/data/app_database.dart';
import 'package:employee_directory/app/data/employee_database_helper.dart';

abstract class LocalStorage {
  EmployeeDatabaseHelper get employeeDbHelper;
}

class LocalStorageImpl implements LocalStorage {
  late AppDatabase database;
  LocalStorageImpl() {
    _init();
  }

  _init() {
    database = AppDatabase();
  }

  @override
  EmployeeDatabaseHelper get employeeDbHelper =>
      database.employeeDatabaseHelper;
}
