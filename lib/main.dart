import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://lpjfmqijznavmhyosqwm.supabase.co",
    anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxwamZtcWlqem5hdm1oeW9zcXdtIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDc5MDM4MjIsImV4cCI6MjAyMzQ3OTgyMn0.kO65rpnK2eySz-Ym5iBGeHNsGIyh8oWxqYDxsE6gBJ8",    
    );
  runApp(
    const App(),
  );
}

final supabase = Supabase.instance.client;
