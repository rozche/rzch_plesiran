import 'package:flutter/material.dart';
import 'package:plesiran/splashscreen.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rozche Mobile',
      theme: ThemeData(
        fontFamily: 'Urbanist',
        primarySwatch: Colors.orange,
      ),
      home: const SplashScreen(),
      // home: const SplashScreen(),
    );
  }
}
