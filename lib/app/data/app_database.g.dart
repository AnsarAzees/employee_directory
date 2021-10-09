// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class EmployeeData extends DataClass implements Insertable<EmployeeData> {
  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final String? profileImage;
  final String? website;
  final String? phone;
  final int? address;
  final int? company;
  EmployeeData(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.profileImage,
      this.website,
      this.phone,
      this.address,
      this.company});
  factory EmployeeData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return EmployeeData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      username: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}username']),
      email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email']),
      profileImage: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}profile_image']),
      website: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}website']),
      phone: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}phone']),
      address: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}address']),
      company: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}company']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String?>(name);
    }
    if (!nullToAbsent || username != null) {
      map['username'] = Variable<String?>(username);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String?>(email);
    }
    if (!nullToAbsent || profileImage != null) {
      map['profile_image'] = Variable<String?>(profileImage);
    }
    if (!nullToAbsent || website != null) {
      map['website'] = Variable<String?>(website);
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String?>(phone);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<int?>(address);
    }
    if (!nullToAbsent || company != null) {
      map['company'] = Variable<int?>(company);
    }
    return map;
  }

  EmployeeCompanion toCompanion(bool nullToAbsent) {
    return EmployeeCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      username: username == null && nullToAbsent
          ? const Value.absent()
          : Value(username),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      profileImage: profileImage == null && nullToAbsent
          ? const Value.absent()
          : Value(profileImage),
      website: website == null && nullToAbsent
          ? const Value.absent()
          : Value(website),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      company: company == null && nullToAbsent
          ? const Value.absent()
          : Value(company),
    );
  }

  factory EmployeeData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return EmployeeData(
      id: serializer.fromJson<int?>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      username: serializer.fromJson<String?>(json['username']),
      email: serializer.fromJson<String?>(json['email']),
      profileImage: serializer.fromJson<String?>(json['profileImage']),
      website: serializer.fromJson<String?>(json['website']),
      phone: serializer.fromJson<String?>(json['phone']),
      address: serializer.fromJson<int?>(json['address']),
      company: serializer.fromJson<int?>(json['company']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'name': serializer.toJson<String?>(name),
      'username': serializer.toJson<String?>(username),
      'email': serializer.toJson<String?>(email),
      'profileImage': serializer.toJson<String?>(profileImage),
      'website': serializer.toJson<String?>(website),
      'phone': serializer.toJson<String?>(phone),
      'address': serializer.toJson<int?>(address),
      'company': serializer.toJson<int?>(company),
    };
  }

  EmployeeData copyWith(
          {int? id,
          String? name,
          String? username,
          String? email,
          String? profileImage,
          String? website,
          String? phone,
          int? address,
          int? company}) =>
      EmployeeData(
        id: id ?? this.id,
        name: name ?? this.name,
        username: username ?? this.username,
        email: email ?? this.email,
        profileImage: profileImage ?? this.profileImage,
        website: website ?? this.website,
        phone: phone ?? this.phone,
        address: address ?? this.address,
        company: company ?? this.company,
      );
  @override
  String toString() {
    return (StringBuffer('EmployeeData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('username: $username, ')
          ..write('email: $email, ')
          ..write('profileImage: $profileImage, ')
          ..write('website: $website, ')
          ..write('phone: $phone, ')
          ..write('address: $address, ')
          ..write('company: $company')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              username.hashCode,
              $mrjc(
                  email.hashCode,
                  $mrjc(
                      profileImage.hashCode,
                      $mrjc(
                          website.hashCode,
                          $mrjc(phone.hashCode,
                              $mrjc(address.hashCode, company.hashCode)))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EmployeeData &&
          other.id == this.id &&
          other.name == this.name &&
          other.username == this.username &&
          other.email == this.email &&
          other.profileImage == this.profileImage &&
          other.website == this.website &&
          other.phone == this.phone &&
          other.address == this.address &&
          other.company == this.company);
}

class EmployeeCompanion extends UpdateCompanion<EmployeeData> {
  final Value<int?> id;
  final Value<String?> name;
  final Value<String?> username;
  final Value<String?> email;
  final Value<String?> profileImage;
  final Value<String?> website;
  final Value<String?> phone;
  final Value<int?> address;
  final Value<int?> company;
  const EmployeeCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.username = const Value.absent(),
    this.email = const Value.absent(),
    this.profileImage = const Value.absent(),
    this.website = const Value.absent(),
    this.phone = const Value.absent(),
    this.address = const Value.absent(),
    this.company = const Value.absent(),
  });
  EmployeeCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.username = const Value.absent(),
    this.email = const Value.absent(),
    this.profileImage = const Value.absent(),
    this.website = const Value.absent(),
    this.phone = const Value.absent(),
    this.address = const Value.absent(),
    this.company = const Value.absent(),
  });
  static Insertable<EmployeeData> custom({
    Expression<int?>? id,
    Expression<String?>? name,
    Expression<String?>? username,
    Expression<String?>? email,
    Expression<String?>? profileImage,
    Expression<String?>? website,
    Expression<String?>? phone,
    Expression<int?>? address,
    Expression<int?>? company,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (username != null) 'username': username,
      if (email != null) 'email': email,
      if (profileImage != null) 'profile_image': profileImage,
      if (website != null) 'website': website,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
      if (company != null) 'company': company,
    });
  }

  EmployeeCompanion copyWith(
      {Value<int?>? id,
      Value<String?>? name,
      Value<String?>? username,
      Value<String?>? email,
      Value<String?>? profileImage,
      Value<String?>? website,
      Value<String?>? phone,
      Value<int?>? address,
      Value<int?>? company}) {
    return EmployeeCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
      email: email ?? this.email,
      profileImage: profileImage ?? this.profileImage,
      website: website ?? this.website,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      company: company ?? this.company,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String?>(name.value);
    }
    if (username.present) {
      map['username'] = Variable<String?>(username.value);
    }
    if (email.present) {
      map['email'] = Variable<String?>(email.value);
    }
    if (profileImage.present) {
      map['profile_image'] = Variable<String?>(profileImage.value);
    }
    if (website.present) {
      map['website'] = Variable<String?>(website.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String?>(phone.value);
    }
    if (address.present) {
      map['address'] = Variable<int?>(address.value);
    }
    if (company.present) {
      map['company'] = Variable<int?>(company.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EmployeeCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('username: $username, ')
          ..write('email: $email, ')
          ..write('profileImage: $profileImage, ')
          ..write('website: $website, ')
          ..write('phone: $phone, ')
          ..write('address: $address, ')
          ..write('company: $company')
          ..write(')'))
        .toString();
  }
}

class $EmployeeTable extends Employee
    with TableInfo<$EmployeeTable, EmployeeData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $EmployeeTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _usernameMeta = const VerificationMeta('username');
  late final GeneratedColumn<String?> username = GeneratedColumn<String?>(
      'username', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  late final GeneratedColumn<String?> email = GeneratedColumn<String?>(
      'email', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _profileImageMeta =
      const VerificationMeta('profileImage');
  late final GeneratedColumn<String?> profileImage = GeneratedColumn<String?>(
      'profile_image', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _websiteMeta = const VerificationMeta('website');
  late final GeneratedColumn<String?> website = GeneratedColumn<String?>(
      'website', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _phoneMeta = const VerificationMeta('phone');
  late final GeneratedColumn<String?> phone = GeneratedColumn<String?>(
      'phone', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _addressMeta = const VerificationMeta('address');
  late final GeneratedColumn<int?> address = GeneratedColumn<int?>(
      'address', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _companyMeta = const VerificationMeta('company');
  late final GeneratedColumn<int?> company = GeneratedColumn<int?>(
      'company', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        username,
        email,
        profileImage,
        website,
        phone,
        address,
        company
      ];
  @override
  String get aliasedName => _alias ?? 'employee';
  @override
  String get actualTableName => 'employee';
  @override
  VerificationContext validateIntegrity(Insertable<EmployeeData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('profile_image')) {
      context.handle(
          _profileImageMeta,
          profileImage.isAcceptableOrUnknown(
              data['profile_image']!, _profileImageMeta));
    }
    if (data.containsKey('website')) {
      context.handle(_websiteMeta,
          website.isAcceptableOrUnknown(data['website']!, _websiteMeta));
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    }
    if (data.containsKey('company')) {
      context.handle(_companyMeta,
          company.isAcceptableOrUnknown(data['company']!, _companyMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EmployeeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return EmployeeData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $EmployeeTable createAlias(String alias) {
    return $EmployeeTable(_db, alias);
  }
}

class Addres extends DataClass implements Insertable<Addres> {
  final int? id;
  final String? street;
  final String? suite;
  final String? city;
  final String? zipcode;
  final int? geo;
  Addres({this.id, this.street, this.suite, this.city, this.zipcode, this.geo});
  factory Addres.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Addres(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      street: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}street']),
      suite: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}suite']),
      city: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}city']),
      zipcode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}zipcode']),
      geo: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}geo']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || street != null) {
      map['street'] = Variable<String?>(street);
    }
    if (!nullToAbsent || suite != null) {
      map['suite'] = Variable<String?>(suite);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String?>(city);
    }
    if (!nullToAbsent || zipcode != null) {
      map['zipcode'] = Variable<String?>(zipcode);
    }
    if (!nullToAbsent || geo != null) {
      map['geo'] = Variable<int?>(geo);
    }
    return map;
  }

  AddressCompanion toCompanion(bool nullToAbsent) {
    return AddressCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      street:
          street == null && nullToAbsent ? const Value.absent() : Value(street),
      suite:
          suite == null && nullToAbsent ? const Value.absent() : Value(suite),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      zipcode: zipcode == null && nullToAbsent
          ? const Value.absent()
          : Value(zipcode),
      geo: geo == null && nullToAbsent ? const Value.absent() : Value(geo),
    );
  }

  factory Addres.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Addres(
      id: serializer.fromJson<int?>(json['id']),
      street: serializer.fromJson<String?>(json['street']),
      suite: serializer.fromJson<String?>(json['suite']),
      city: serializer.fromJson<String?>(json['city']),
      zipcode: serializer.fromJson<String?>(json['zipcode']),
      geo: serializer.fromJson<int?>(json['geo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'street': serializer.toJson<String?>(street),
      'suite': serializer.toJson<String?>(suite),
      'city': serializer.toJson<String?>(city),
      'zipcode': serializer.toJson<String?>(zipcode),
      'geo': serializer.toJson<int?>(geo),
    };
  }

  Addres copyWith(
          {int? id,
          String? street,
          String? suite,
          String? city,
          String? zipcode,
          int? geo}) =>
      Addres(
        id: id ?? this.id,
        street: street ?? this.street,
        suite: suite ?? this.suite,
        city: city ?? this.city,
        zipcode: zipcode ?? this.zipcode,
        geo: geo ?? this.geo,
      );
  @override
  String toString() {
    return (StringBuffer('Addres(')
          ..write('id: $id, ')
          ..write('street: $street, ')
          ..write('suite: $suite, ')
          ..write('city: $city, ')
          ..write('zipcode: $zipcode, ')
          ..write('geo: $geo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          street.hashCode,
          $mrjc(suite.hashCode,
              $mrjc(city.hashCode, $mrjc(zipcode.hashCode, geo.hashCode))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Addres &&
          other.id == this.id &&
          other.street == this.street &&
          other.suite == this.suite &&
          other.city == this.city &&
          other.zipcode == this.zipcode &&
          other.geo == this.geo);
}

class AddressCompanion extends UpdateCompanion<Addres> {
  final Value<int?> id;
  final Value<String?> street;
  final Value<String?> suite;
  final Value<String?> city;
  final Value<String?> zipcode;
  final Value<int?> geo;
  const AddressCompanion({
    this.id = const Value.absent(),
    this.street = const Value.absent(),
    this.suite = const Value.absent(),
    this.city = const Value.absent(),
    this.zipcode = const Value.absent(),
    this.geo = const Value.absent(),
  });
  AddressCompanion.insert({
    this.id = const Value.absent(),
    this.street = const Value.absent(),
    this.suite = const Value.absent(),
    this.city = const Value.absent(),
    this.zipcode = const Value.absent(),
    this.geo = const Value.absent(),
  });
  static Insertable<Addres> custom({
    Expression<int?>? id,
    Expression<String?>? street,
    Expression<String?>? suite,
    Expression<String?>? city,
    Expression<String?>? zipcode,
    Expression<int?>? geo,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (street != null) 'street': street,
      if (suite != null) 'suite': suite,
      if (city != null) 'city': city,
      if (zipcode != null) 'zipcode': zipcode,
      if (geo != null) 'geo': geo,
    });
  }

  AddressCompanion copyWith(
      {Value<int?>? id,
      Value<String?>? street,
      Value<String?>? suite,
      Value<String?>? city,
      Value<String?>? zipcode,
      Value<int?>? geo}) {
    return AddressCompanion(
      id: id ?? this.id,
      street: street ?? this.street,
      suite: suite ?? this.suite,
      city: city ?? this.city,
      zipcode: zipcode ?? this.zipcode,
      geo: geo ?? this.geo,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (street.present) {
      map['street'] = Variable<String?>(street.value);
    }
    if (suite.present) {
      map['suite'] = Variable<String?>(suite.value);
    }
    if (city.present) {
      map['city'] = Variable<String?>(city.value);
    }
    if (zipcode.present) {
      map['zipcode'] = Variable<String?>(zipcode.value);
    }
    if (geo.present) {
      map['geo'] = Variable<int?>(geo.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AddressCompanion(')
          ..write('id: $id, ')
          ..write('street: $street, ')
          ..write('suite: $suite, ')
          ..write('city: $city, ')
          ..write('zipcode: $zipcode, ')
          ..write('geo: $geo')
          ..write(')'))
        .toString();
  }
}

class $AddressTable extends Address with TableInfo<$AddressTable, Addres> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AddressTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _streetMeta = const VerificationMeta('street');
  late final GeneratedColumn<String?> street = GeneratedColumn<String?>(
      'street', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _suiteMeta = const VerificationMeta('suite');
  late final GeneratedColumn<String?> suite = GeneratedColumn<String?>(
      'suite', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _cityMeta = const VerificationMeta('city');
  late final GeneratedColumn<String?> city = GeneratedColumn<String?>(
      'city', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _zipcodeMeta = const VerificationMeta('zipcode');
  late final GeneratedColumn<String?> zipcode = GeneratedColumn<String?>(
      'zipcode', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _geoMeta = const VerificationMeta('geo');
  late final GeneratedColumn<int?> geo = GeneratedColumn<int?>(
      'geo', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, street, suite, city, zipcode, geo];
  @override
  String get aliasedName => _alias ?? 'address';
  @override
  String get actualTableName => 'address';
  @override
  VerificationContext validateIntegrity(Insertable<Addres> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('street')) {
      context.handle(_streetMeta,
          street.isAcceptableOrUnknown(data['street']!, _streetMeta));
    }
    if (data.containsKey('suite')) {
      context.handle(
          _suiteMeta, suite.isAcceptableOrUnknown(data['suite']!, _suiteMeta));
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    }
    if (data.containsKey('zipcode')) {
      context.handle(_zipcodeMeta,
          zipcode.isAcceptableOrUnknown(data['zipcode']!, _zipcodeMeta));
    }
    if (data.containsKey('geo')) {
      context.handle(
          _geoMeta, geo.isAcceptableOrUnknown(data['geo']!, _geoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Addres map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Addres.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AddressTable createAlias(String alias) {
    return $AddressTable(_db, alias);
  }
}

class GeoData extends DataClass implements Insertable<GeoData> {
  final int? id;
  final String? lat;
  final String? lng;
  GeoData({this.id, this.lat, this.lng});
  factory GeoData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return GeoData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      lat: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}lat']),
      lng: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}lng']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || lat != null) {
      map['lat'] = Variable<String?>(lat);
    }
    if (!nullToAbsent || lng != null) {
      map['lng'] = Variable<String?>(lng);
    }
    return map;
  }

  GeoCompanion toCompanion(bool nullToAbsent) {
    return GeoCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      lat: lat == null && nullToAbsent ? const Value.absent() : Value(lat),
      lng: lng == null && nullToAbsent ? const Value.absent() : Value(lng),
    );
  }

  factory GeoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return GeoData(
      id: serializer.fromJson<int?>(json['id']),
      lat: serializer.fromJson<String?>(json['lat']),
      lng: serializer.fromJson<String?>(json['lng']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'lat': serializer.toJson<String?>(lat),
      'lng': serializer.toJson<String?>(lng),
    };
  }

  GeoData copyWith({int? id, String? lat, String? lng}) => GeoData(
        id: id ?? this.id,
        lat: lat ?? this.lat,
        lng: lng ?? this.lng,
      );
  @override
  String toString() {
    return (StringBuffer('GeoData(')
          ..write('id: $id, ')
          ..write('lat: $lat, ')
          ..write('lng: $lng')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(lat.hashCode, lng.hashCode)));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GeoData &&
          other.id == this.id &&
          other.lat == this.lat &&
          other.lng == this.lng);
}

class GeoCompanion extends UpdateCompanion<GeoData> {
  final Value<int?> id;
  final Value<String?> lat;
  final Value<String?> lng;
  const GeoCompanion({
    this.id = const Value.absent(),
    this.lat = const Value.absent(),
    this.lng = const Value.absent(),
  });
  GeoCompanion.insert({
    this.id = const Value.absent(),
    this.lat = const Value.absent(),
    this.lng = const Value.absent(),
  });
  static Insertable<GeoData> custom({
    Expression<int?>? id,
    Expression<String?>? lat,
    Expression<String?>? lng,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lat != null) 'lat': lat,
      if (lng != null) 'lng': lng,
    });
  }

  GeoCompanion copyWith(
      {Value<int?>? id, Value<String?>? lat, Value<String?>? lng}) {
    return GeoCompanion(
      id: id ?? this.id,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (lat.present) {
      map['lat'] = Variable<String?>(lat.value);
    }
    if (lng.present) {
      map['lng'] = Variable<String?>(lng.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GeoCompanion(')
          ..write('id: $id, ')
          ..write('lat: $lat, ')
          ..write('lng: $lng')
          ..write(')'))
        .toString();
  }
}

class $GeoTable extends Geo with TableInfo<$GeoTable, GeoData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $GeoTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _latMeta = const VerificationMeta('lat');
  late final GeneratedColumn<String?> lat = GeneratedColumn<String?>(
      'lat', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _lngMeta = const VerificationMeta('lng');
  late final GeneratedColumn<String?> lng = GeneratedColumn<String?>(
      'lng', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, lat, lng];
  @override
  String get aliasedName => _alias ?? 'geo';
  @override
  String get actualTableName => 'geo';
  @override
  VerificationContext validateIntegrity(Insertable<GeoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('lat')) {
      context.handle(
          _latMeta, lat.isAcceptableOrUnknown(data['lat']!, _latMeta));
    }
    if (data.containsKey('lng')) {
      context.handle(
          _lngMeta, lng.isAcceptableOrUnknown(data['lng']!, _lngMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GeoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return GeoData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $GeoTable createAlias(String alias) {
    return $GeoTable(_db, alias);
  }
}

class CompanyData extends DataClass implements Insertable<CompanyData> {
  final int? id;
  final String? name;
  final String? catchPhrase;
  final String? bs;
  CompanyData({this.id, this.name, this.catchPhrase, this.bs});
  factory CompanyData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return CompanyData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      catchPhrase: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}catch_phrase']),
      bs: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}bs']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String?>(name);
    }
    if (!nullToAbsent || catchPhrase != null) {
      map['catch_phrase'] = Variable<String?>(catchPhrase);
    }
    if (!nullToAbsent || bs != null) {
      map['bs'] = Variable<String?>(bs);
    }
    return map;
  }

  CompanyCompanion toCompanion(bool nullToAbsent) {
    return CompanyCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      catchPhrase: catchPhrase == null && nullToAbsent
          ? const Value.absent()
          : Value(catchPhrase),
      bs: bs == null && nullToAbsent ? const Value.absent() : Value(bs),
    );
  }

  factory CompanyData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CompanyData(
      id: serializer.fromJson<int?>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      catchPhrase: serializer.fromJson<String?>(json['catchPhrase']),
      bs: serializer.fromJson<String?>(json['bs']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'name': serializer.toJson<String?>(name),
      'catchPhrase': serializer.toJson<String?>(catchPhrase),
      'bs': serializer.toJson<String?>(bs),
    };
  }

  CompanyData copyWith(
          {int? id, String? name, String? catchPhrase, String? bs}) =>
      CompanyData(
        id: id ?? this.id,
        name: name ?? this.name,
        catchPhrase: catchPhrase ?? this.catchPhrase,
        bs: bs ?? this.bs,
      );
  @override
  String toString() {
    return (StringBuffer('CompanyData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('catchPhrase: $catchPhrase, ')
          ..write('bs: $bs')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(name.hashCode, $mrjc(catchPhrase.hashCode, bs.hashCode))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CompanyData &&
          other.id == this.id &&
          other.name == this.name &&
          other.catchPhrase == this.catchPhrase &&
          other.bs == this.bs);
}

class CompanyCompanion extends UpdateCompanion<CompanyData> {
  final Value<int?> id;
  final Value<String?> name;
  final Value<String?> catchPhrase;
  final Value<String?> bs;
  const CompanyCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.catchPhrase = const Value.absent(),
    this.bs = const Value.absent(),
  });
  CompanyCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.catchPhrase = const Value.absent(),
    this.bs = const Value.absent(),
  });
  static Insertable<CompanyData> custom({
    Expression<int?>? id,
    Expression<String?>? name,
    Expression<String?>? catchPhrase,
    Expression<String?>? bs,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (catchPhrase != null) 'catch_phrase': catchPhrase,
      if (bs != null) 'bs': bs,
    });
  }

  CompanyCompanion copyWith(
      {Value<int?>? id,
      Value<String?>? name,
      Value<String?>? catchPhrase,
      Value<String?>? bs}) {
    return CompanyCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      catchPhrase: catchPhrase ?? this.catchPhrase,
      bs: bs ?? this.bs,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String?>(name.value);
    }
    if (catchPhrase.present) {
      map['catch_phrase'] = Variable<String?>(catchPhrase.value);
    }
    if (bs.present) {
      map['bs'] = Variable<String?>(bs.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CompanyCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('catchPhrase: $catchPhrase, ')
          ..write('bs: $bs')
          ..write(')'))
        .toString();
  }
}

class $CompanyTable extends Company with TableInfo<$CompanyTable, CompanyData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $CompanyTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _catchPhraseMeta =
      const VerificationMeta('catchPhrase');
  late final GeneratedColumn<String?> catchPhrase = GeneratedColumn<String?>(
      'catch_phrase', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _bsMeta = const VerificationMeta('bs');
  late final GeneratedColumn<String?> bs = GeneratedColumn<String?>(
      'bs', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, name, catchPhrase, bs];
  @override
  String get aliasedName => _alias ?? 'company';
  @override
  String get actualTableName => 'company';
  @override
  VerificationContext validateIntegrity(Insertable<CompanyData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('catch_phrase')) {
      context.handle(
          _catchPhraseMeta,
          catchPhrase.isAcceptableOrUnknown(
              data['catch_phrase']!, _catchPhraseMeta));
    }
    if (data.containsKey('bs')) {
      context.handle(_bsMeta, bs.isAcceptableOrUnknown(data['bs']!, _bsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CompanyData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return CompanyData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CompanyTable createAlias(String alias) {
    return $CompanyTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $EmployeeTable employee = $EmployeeTable(this);
  late final $AddressTable address = $AddressTable(this);
  late final $GeoTable geo = $GeoTable(this);
  late final $CompanyTable company = $CompanyTable(this);
  late final EmployeeDatabaseHelper employeeDatabaseHelper =
      EmployeeDatabaseHelper(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [employee, address, geo, company];
}
