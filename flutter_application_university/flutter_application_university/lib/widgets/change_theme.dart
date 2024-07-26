import 'package:flutter/material.dart';
import 'package:flutter_application_university/main.dart';

class SwitchTheTheme extends StatefulWidget {
  const SwitchTheTheme({super.key});

  @override
  State<SwitchTheTheme> createState() => _SwitchTheThemeState();
}

class _SwitchTheThemeState extends State<SwitchTheTheme> {
  bool isDarkMode = false;
  void toggleTheme(bool value) {
    setState(() {
      isDarkMode = value;

      final themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
      MyApp.of(context)?.setThemeMode(themeMode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Dark Mode'),
      trailing: Switch(
        activeColor: Colors.grey.shade400,
        value: isDarkMode,
        onChanged: toggleTheme,
      ),
    );
  }
}
