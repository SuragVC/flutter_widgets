import 'package:flutter/material.dart';
import 'package:flutter_widgets/constants/app_text_styles.dart';
import 'package:flutter_widgets/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(textTheme: AppTextStyles.poppins),
      routerConfig: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
