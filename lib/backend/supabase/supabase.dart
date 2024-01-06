import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://npameycumruxvvykfmlt.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5wYW1leWN1bXJ1eHZ2eWtmbWx0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDI3MzQ2MTksImV4cCI6MjAxODMxMDYxOX0.-E9N1N4BYZxeKZjMA0UKUnoxf1QqtY64cVnRFIHaRYo';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
