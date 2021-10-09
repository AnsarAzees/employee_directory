import 'dart:io';

import 'package:employee_directory/app/data/employee_database_helper.dart';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

class Employee extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get name => text().nullable()();
  TextColumn get username => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get profileImage => text().nullable()();
  TextColumn get website => text().nullable()();
  TextColumn get phone => text().nullable()();
  IntColumn get address => integer().nullable()();
  IntColumn get company => integer().nullable()();
}

class Address extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get street => text().nullable()();
  TextColumn get suite => text().nullable()();
  TextColumn get city => text().nullable()();
  TextColumn get zipcode => text().nullable()();
  IntColumn get geo => integer().nullable()();
}

// @DataClassName("Geo")
class Geo extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get lat => text().nullable()();
  TextColumn get lng => text().nullable()();
}

// @DataClassName("Company")
class Company extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get name => text().nullable()();
  TextColumn get catchPhrase => text().nullable()();
  TextColumn get bs => text().nullable()();
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(
    tables: [Employee, Address, Geo, Company], daos: [EmployeeDatabaseHelper])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  // TODO: implement schemaVersion
  int get schemaVersion => 1;
}
