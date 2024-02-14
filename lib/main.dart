import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'app.dart';

const supabaseUrl = 'https://lpjfmqijznavmhyosqwm.supabase.co';
const supabaseKey = String.fromEnvironment('SUPABASE_KEY');

Future<void> main() async {
  
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: supabaseKey,
    anonKey: supabaseKey,    
    );
  runApp(
    const App(),
  );
}

final supabase = Supabase.instance.client;