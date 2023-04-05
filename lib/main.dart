import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/views/screens/detailspage.dart';
import 'package:notes_app/views/screens/homepage.dart';
import 'package:notes_app/views/screens/splashscreen_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "SplashScreen",
      routes: {
        "HomePage": (context) => const HomePage(),
        "DetailPage": (context) => const DetailPage(),
        "SplashScreen": (context) => const SplashScreen(),
      },
    ),
  );
}