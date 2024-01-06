import '../database.dart';

class TodosTable extends SupabaseTable<TodosRow> {
  @override
  String get tableName => 'todos';

  @override
  TodosRow createRow(Map<String, dynamic> data) => TodosRow(data);
}

class TodosRow extends SupabaseDataRow {
  TodosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TodosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get boatName => getField<String>('boat name');
  set boatName(String? value) => setField<String>('boat name', value);

  bool? get isComplete => getField<bool>('is_complete');
  set isComplete(bool? value) => setField<bool>('is_complete', value);

  DateTime get insertedAt => getField<DateTime>('inserted_at')!;
  set insertedAt(DateTime value) => setField<DateTime>('inserted_at', value);

  String? get capacity => getField<String>('capacity');
  set capacity(String? value) => setField<String>('capacity', value);

  String? get location => getField<String>('location ');
  set location(String? value) => setField<String>('location ', value);

  String? get track => getField<String>('track');
  set track(String? value) => setField<String>('track', value);

  bool? get drinks => getField<bool>('drinks');
  set drinks(bool? value) => setField<bool>('drinks', value);

  bool? get kitchen => getField<bool>('kitchen');
  set kitchen(bool? value) => setField<bool>('kitchen', value);

  bool? get bathroom => getField<bool>('bathroom');
  set bathroom(bool? value) => setField<bool>('bathroom', value);

  bool? get meal => getField<bool>('meal');
  set meal(bool? value) => setField<bool>('meal', value);

  bool? get waterGames => getField<bool>('water games');
  set waterGames(bool? value) => setField<bool>('water games', value);

  bool? get ac => getField<bool>('AC');
  set ac(bool? value) => setField<bool>('AC', value);

  bool? get fishingGear => getField<bool>('fishing gear');
  set fishingGear(bool? value) => setField<bool>('fishing gear', value);

  bool? get snaks => getField<bool>('snaks');
  set snaks(bool? value) => setField<bool>('snaks', value);

  bool? get divingGear => getField<bool>('diving gear');
  set divingGear(bool? value) => setField<bool>('diving gear', value);

  bool? get iceBox => getField<bool>('ice box');
  set iceBox(bool? value) => setField<bool>('ice box', value);

  bool? get water => getField<bool>('water');
  set water(bool? value) => setField<bool>('water', value);

  String? get other => getField<String>('other');
  set other(String? value) => setField<String>('other', value);

  String? get perHour => getField<String>('per hour');
  set perHour(String? value) => setField<String>('per hour', value);

  String? get perPerson => getField<String>('per person');
  set perPerson(String? value) => setField<String>('per person', value);
}
