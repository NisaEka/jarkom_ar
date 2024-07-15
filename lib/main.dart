import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:jarkom_ar/const/color_const.dart';
import 'package:jarkom_ar/home_screen.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          background: bgColor,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateColor.resolveWith((states) => primaryColor),
          ),
        ),
        iconButtonTheme: IconButtonThemeData(
          style:ButtonStyle(
            backgroundColor: WidgetStateColor.resolveWith((states) => primaryColor),
            iconColor: WidgetStateColor.resolveWith((states) => darkColor),

          )
        ),
        listTileTheme: const ListTileThemeData(
          tileColor: Colors.grey,
        ),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Parts of Computer'),
      home: const HomeScreen(),
    );
  }
}

