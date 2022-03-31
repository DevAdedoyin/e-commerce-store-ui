import 'package:e_commerce_store_ui/screens/home_screen.dart';
import 'package:e_commerce_store_ui/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colorz.white,
      // statusBarBrightness: Brightness.dark,
      // statusBarIconBrightness: Brightness.dark
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce',
      theme: ThemeData(
        scaffoldBackgroundColor: Colorz.white,
        appBarTheme: const AppBarTheme(color: Colorz.white, elevation: 0),
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
