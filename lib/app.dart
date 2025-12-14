import 'package:flutter/material.dart';
import 'user_profile_screen.dart';

class UserProfileApp extends StatelessWidget {
  const UserProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const UserprofileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}