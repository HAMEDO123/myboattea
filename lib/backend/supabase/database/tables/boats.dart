import '../database.dart';

class BoatsTable extends SupabaseTable<BoatsRow> {
  @override
  String get tableName => 'boats';

  @override
  BoatsRow createRow(Map<String, dynamic> data) => BoatsRow(data);
}

class BoatsRow extends SupabaseDataRow {
  BoatsRow(super.data);

  @override
  SupabaseTable get table => BoatsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get boatName => getField<String>('boat name')!;
  set boatName(String value) => setField<String>('boat name', value);

  String get capacity => getField<String>('capacity')!;
  set capacity(String value) => setField<String>('capacity', value);

  String get location => getField<String>('location')!;
  set location(String value) => setField<String>('location', value);

  String get boatType => getField<String>('boat type')!;
  set boatType(String value) => setField<String>('boat type', value);

  String get boatDetails => getField<String>('boat details')!;
  set boatDetails(String value) => setField<String>('boat details', value);

  String get track => getField<String>('track')!;
  set track(String value) => setField<String>('track', value);

  bool? get drinks => getField<bool>('Drinks');
  set drinks(bool? value) => setField<bool>('Drinks', value);

  bool? get kitchen => getField<bool>('Kitchen');
  set kitchen(bool? value) => setField<bool>('Kitchen', value);

  bool? get bathroom => getField<bool>('Bathroom');
  set bathroom(bool? value) => setField<bool>('Bathroom', value);

  bool? get meal => getField<bool>('Meal');
  set meal(bool? value) => setField<bool>('Meal', value);

  bool? get waterGames => getField<bool>('water games');
  set waterGames(bool? value) => setField<bool>('water games', value);

  bool? get ac => getField<bool>('AC');
  set ac(bool? value) => setField<bool>('AC', value);

  bool? get fishingGear => getField<bool>('fishing gear');
  set fishingGear(bool? value) => setField<bool>('fishing gear', value);

  bool? get snaks => getField<bool>('Snaks');
  set snaks(bool? value) => setField<bool>('Snaks', value);

  bool? get divingGear => getField<bool>('diving gear');
  set divingGear(bool? value) => setField<bool>('diving gear', value);

  bool? get iceBox => getField<bool>('Ice box');
  set iceBox(bool? value) => setField<bool>('Ice box', value);

  bool? get water => getField<bool>('Water');
  set water(bool? value) => setField<bool>('Water', value);

  String get other => getField<String>('Other')!;
  set other(String value) => setField<String>('Other', value);

  String? get photos => getField<String>('PHOTOS');
  set photos(String? value) => setField<String>('PHOTOS', value);

  String? get pricePerHour => getField<String>('price per hour');
  set pricePerHour(String? value) => setField<String>('price per hour', value);

  String? get pricePerPerson => getField<String>('price per person');
  set pricePerPerson(String? value) =>
      setField<String>('price per person', value);
}
