import 'dart:io';
import 'package:flutter/material.dart';
import './pages/onboarding.dart';
import './pages/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart'; 


void main() async {
  if(Platform.isWindows || Platform.isLinux) {
   await FacebookAuth.i.webAndDesktopInitialize(
      appId: "918788496148996",
      cookie: true,
      xfbml: true,
      version: "v15.0",
    );
  }
  WidgetsFlutterBinding.ensureInitialized(); 
  await Firebase.initializeApp();
  runApp(MyApp());
  
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PsycheSail',
      initialRoute: '/login',
      routes: {
        '/': (context) => const onboarding(),
        '/login': (context) => const Login(),
      },
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(useMaterial3: true),
    );
  }
}


  