import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'app.dart';


Future<void> main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  // Load the environment variables
  await dotenv.load(fileName: '.env');
  
  // Access the environment variables
  final supabaseUrl = dotenv.env['SUPABASE_URL'];
  final supabaseKey = dotenv.env['SUPABASE_ANON_KEY'];
  
  await Supabase.initialize(
    url: supabaseUrl!,
    anonKey: supabaseKey!,    
    );
  runApp(
    const App(),
  );
}

final supabase = Supabase.instance.client;