import '../database.dart';

class OwnersDetailsTable extends SupabaseTable<OwnersDetailsRow> {
  @override
  String get tableName => 'Owners Details';

  @override
  OwnersDetailsRow createRow(Map<String, dynamic> data) =>
      OwnersDetailsRow(data);
}

class OwnersDetailsRow extends SupabaseDataRow {
  OwnersDetailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OwnersDetailsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get idowner => getField<String>('idowner')!;
  set idowner(String value) => setField<String>('idowner', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get nationality => getField<String>('nationality')!;
  set nationality(String value) => setField<String>('nationality', value);

  DateTime get dateofbirth => getField<DateTime>('dateofbirth')!;
  set dateofbirth(DateTime value) => setField<DateTime>('dateofbirth', value);

  String get bankname => getField<String>('bankname')!;
  set bankname(String value) => setField<String>('bankname', value);

  String get bankaccountnumber => getField<String>('bankaccountnumber')!;
  set bankaccountnumber(String value) =>
      setField<String>('bankaccountnumber', value);

  String get iban => getField<String>('IBAN')!;
  set iban(String value) => setField<String>('IBAN', value);
}
