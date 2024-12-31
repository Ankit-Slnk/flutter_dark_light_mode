import 'package:flutter/material.dart';
import 'package:flutter_dark_light_mode/provider/dark_theme_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final DarkThemeProvider darkThemeProvider =
        Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () {
            darkThemeProvider.darkTheme = !darkThemeProvider.darkTheme;
          },
          icon: Icon(
            darkThemeProvider.darkTheme
                ? FontAwesomeIcons.cloudMoon
                : FontAwesomeIcons.cloudSun,
            size: 50,
          ),
        ),
      ),
    );
  }
}
