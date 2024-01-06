// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends FFFirebaseStruct {
  UserStruct({
    String? name,
    String? email,
    String? nationality,
    String? bankname,
    String? bannkaccountnumber,
    String? iban,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _email = email,
        _nationality = nationality,
        _bankname = bankname,
        _bannkaccountnumber = bannkaccountnumber,
        _iban = iban,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "nationality" field.
  String? _nationality;
  String get nationality => _nationality ?? '';
  set nationality(String? val) => _nationality = val;
  bool hasNationality() => _nationality != null;

  // "bankname" field.
  String? _bankname;
  String get bankname => _bankname ?? '';
  set bankname(String? val) => _bankname = val;
  bool hasBankname() => _bankname != null;

  // "bannkaccountnumber" field.
  String? _bannkaccountnumber;
  String get bannkaccountnumber => _bannkaccountnumber ?? '';
  set bannkaccountnumber(String? val) => _bannkaccountnumber = val;
  bool hasBannkaccountnumber() => _bannkaccountnumber != null;

  // "IBAN" field.
  String? _iban;
  String get iban => _iban ?? '';
  set iban(String? val) => _iban = val;
  bool hasIban() => _iban != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        name: data['name'] as String?,
        email: data['email'] as String?,
        nationality: data['nationality'] as String?,
        bankname: data['bankname'] as String?,
        bannkaccountnumber: data['bannkaccountnumber'] as String?,
        iban: data['IBAN'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'email': _email,
        'nationality': _nationality,
        'bankname': _bankname,
        'bannkaccountnumber': _bannkaccountnumber,
        'IBAN': _iban,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'nationality': serializeParam(
          _nationality,
          ParamType.String,
        ),
        'bankname': serializeParam(
          _bankname,
          ParamType.String,
        ),
        'bannkaccountnumber': serializeParam(
          _bannkaccountnumber,
          ParamType.String,
        ),
        'IBAN': serializeParam(
          _iban,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        nationality: deserializeParam(
          data['nationality'],
          ParamType.String,
          false,
        ),
        bankname: deserializeParam(
          data['bankname'],
          ParamType.String,
          false,
        ),
        bannkaccountnumber: deserializeParam(
          data['bannkaccountnumber'],
          ParamType.String,
          false,
        ),
        iban: deserializeParam(
          data['IBAN'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        name == other.name &&
        email == other.email &&
        nationality == other.nationality &&
        bankname == other.bankname &&
        bannkaccountnumber == other.bannkaccountnumber &&
        iban == other.iban;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, email, nationality, bankname, bannkaccountnumber, iban]);
}

UserStruct createUserStruct({
  String? name,
  String? email,
  String? nationality,
  String? bankname,
  String? bannkaccountnumber,
  String? iban,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserStruct(
      name: name,
      email: email,
      nationality: nationality,
      bankname: bankname,
      bannkaccountnumber: bannkaccountnumber,
      iban: iban,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserStruct? updateUserStruct(
  UserStruct? user, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    user
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserStructData(
  Map<String, dynamic> firestoreData,
  UserStruct? user,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (user == null) {
    return;
  }
  if (user.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && user.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userData = getUserFirestoreData(user, forFieldValue);
  final nestedData = userData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = user.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserFirestoreData(
  UserStruct? user, [
  bool forFieldValue = false,
]) {
  if (user == null) {
    return {};
  }
  final firestoreData = mapToFirestore(user.toMap());

  // Add any Firestore field values
  user.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserListFirestoreData(
  List<UserStruct>? users,
) =>
    users?.map((e) => getUserFirestoreData(e, true)).toList() ?? [];
