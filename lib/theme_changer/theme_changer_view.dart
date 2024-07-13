import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_stateanagement/theme_changer/theme_changer_provider.dart';

class ThemeChangerView extends StatefulWidget {
  const ThemeChangerView({super.key});

  @override
  State<ThemeChangerView> createState() => _ThemeChangerViewState();
}

class _ThemeChangerViewState extends State<ThemeChangerView> {
  @override
  Widget build(BuildContext context) {
    final changeThemeProvider =Provider.of<ThemeChangerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Theme"),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: const Text("Light Mode"),
            value:ThemeMode.light,
            groupValue: changeThemeProvider.themeMode,
            onChanged: (value) {
              changeThemeProvider.setTheme(ThemeMode.light);
            },
          ),
          RadioListTile<ThemeMode>(
            title: const Text("Dark Mode"),
            value:ThemeMode.dark,
            groupValue: changeThemeProvider.themeMode,
            onChanged: (value) {
              changeThemeProvider.setTheme(ThemeMode.dark);
            },
          ),
          RadioListTile<ThemeMode>(
            title: const Text("System Mode"),
            value:ThemeMode.system,
            groupValue: changeThemeProvider.themeMode,
            onChanged: (value) {
              changeThemeProvider.setTheme(ThemeMode.system);
            },
          ),
        ],
      ),
    );
  }
}