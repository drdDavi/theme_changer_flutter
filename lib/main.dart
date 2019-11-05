import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_changer_flutter/models_provider/theme_provider.dart';
import 'package:theme_changer_flutter/pages/theme_changer_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      builder: (_) => ThemeProvider(isLightTheme: true),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Theme Changer',
      theme: themeProvider.getThemeData,
      home: ThemeChangerPage(),
    );
  }
}
