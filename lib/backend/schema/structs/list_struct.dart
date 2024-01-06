// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListStruct extends FFFirebaseStruct {
  ListStruct({
    int? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        super(firestoreUtilData);

  // "name" field.
  int? _name;
  int get name => _name ?? 0;
  set name(int? val) => _name = val;
  void incrementName(int amount) => _name = name + amount;
  bool hasName() => _name != null;

  static ListStruct fromMap(Map<String, dynamic> data) => ListStruct(
        name: castToType<int>(data['name']),
      );

  static ListStruct? maybeFromMap(dynamic data) =>
      data is Map ? ListStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.int,
        ),
      }.withoutNulls;

  static ListStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListStruct(
        name: deserializeParam(
          data['name'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListStruct && name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([name]);
}

ListStruct createListStruct({
  int? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ListStruct(
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ListStruct? updateListStruct(
  ListStruct? list, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    list
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addListStructData(
  Map<String, dynamic> firestoreData,
  ListStruct? list,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (list == null) {
    return;
  }
  if (list.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && list.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final listData = getListFirestoreData(list, forFieldValue);
  final nestedData = listData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = list.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getListFirestoreData(
  ListStruct? list, [
  bool forFieldValue = false,
]) {
  if (list == null) {
    return {};
  }
  final firestoreData = mapToFirestore(list.toMap());

  // Add any Firestore field values
  list.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getListListFirestoreData(
  List<ListStruct>? lists,
) =>
    lists?.map((e) => getListFirestoreData(e, true)).toList() ?? [];
