import 'package:all_in_one/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'All in one',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.orange),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      getPages: AppRoutes.getPages,
      initialRoute: AppRoutes.HOME,
    );
  }
}