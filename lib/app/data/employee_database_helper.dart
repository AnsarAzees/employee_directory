import 'package:employee_directory/app/data/app_database.dart';
import 'package:employee_directory/app/modules/home/models/employee_details.dart'
    as details;
import 'package:moor/moor.dart';

part 'employee_database_helper.g.dart';

@UseDao(tables: [Employee, Address, Geo, Company])
class EmployeeDatabaseHelper extends DatabaseAccessor<AppDatabase>
    with _$EmployeeDatabaseHelperMixin {
  EmployeeDatabaseHelper(AppDatabase attachedDatabase)
      : super(attachedDatabase);

  Future<List<details.EmployeeDetails>?> getAllEmployees() async {
    final query = select(employee).join([
      leftOuterJoin(company, company.id.equalsExp(employee.company)),
      leftOuterJoin(address, address.id.equalsExp(employee.address)),
      leftOuterJoin(geo, geo.id.equalsExp(address.geo)),
    ]);

    var result = await query.get().then((rows) {
      return rows.map((e) {
        final geoValue = e.readTable(geo);
        final addressValue = e.readTable(address);
        final companyValue = e.readTable(company);
        final employeeValue = e.readTable(employee);

        var employeeDetails = details.EmployeeDetails(
            name: employeeValue.name,
            address: details.Address(
              city: addressValue.city,
              geo: details.Geo(
                lat: geoValue.lat,
                lng: geoValue.lng,
              ),
              street: addressValue.street,
              suite: addressValue.suite,
              zipcode: addressValue.zipcode,
            ),
            website: employeeValue.website,
            username: employeeValue.username,
            profileImage: employeeValue.profileImage,
            email: employeeValue.email,
            company: details.Company(
                name: companyValue.name,
                bs: companyValue.bs,
                catchPhrase: companyValue.catchPhrase),
            id: employeeValue.id,
            phone: employeeValue.phone);
        return employeeDetails;
      }).toList();
    });

    return result;
  }

  Future<int> insertEmployee(details.EmployeeDetails employeeData) async {
    int geoId = await into(geo).insert(GeoData(
      lat: employeeData.address?.geo?.lat.toString(),
      lng: employeeData.address?.geo?.lng.toString(),
    ));

    int addressId = await into(address).insert(Addres(
      geo: geoId,
      city: employeeData.address?.city,
      street: employeeData.address?.street,
      suite: employeeData.address?.suite,
      zipcode: employeeData.address?.zipcode,
    ));

    int companyId = await into(company).insert(CompanyData(
      bs: employeeData.company?.bs,
      catchPhrase: employeeData.company?.catchPhrase,
      name: employeeData.company?.name,
    ));

    return into(employee).insert(EmployeeData(
        company: companyId,
        address: addressId,
        email: employeeData.email,
        name: employeeData.name,
        profileImage: employeeData.profileImage,
        username: employeeData.username,
        website: employeeData.website));
  }
}
