import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redit_clone/features/auth/screens/login_screen.dart';
import 'package:redit_clone/firebase_options.dart';
import 'package:redit_clone/theme/pallete.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RedditLes',
      theme: Pallete.darkModeAppTheme,
      home: const LoginScreen(),
    );
  }
}
