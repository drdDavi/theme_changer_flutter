import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_changer_flutter/models_provider/theme_provider.dart';

class ThemeChangerPage extends StatefulWidget {
  ThemeChangerPage({Key key}) : super(key: key);

  @override
  _ThemeChangerPageState createState() => _ThemeChangerPageState();
}

class _ThemeChangerPageState extends State<ThemeChangerPage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Switch(
                  value: themeProvider.isLightTheme,
                  onChanged: (val) {
                    themeProvider.setThemeData = val;
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer."),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Icon(Icons.accessibility_new), Icon(Icons.account_balance), Icon(Icons.account_box)],
          )
        ],
      ),
    );
  }
}
