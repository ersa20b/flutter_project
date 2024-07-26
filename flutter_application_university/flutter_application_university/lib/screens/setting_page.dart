import 'package:flutter/material.dart';
import 'package:flutter_application_university/widgets/change_theme.dart';
import 'package:flutter_application_university/widgets/dropdown_botton.dart';
import 'package:flutter_application_university/widgets/logout_botton.dart';
import 'package:flutter_application_university/widgets/user_info.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  void logUserOut(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Page'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const UserInfo(),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: DropDownButton(),
            ),
            SwitchTheTheme(),
            const Divider(),
            const SizedBox(
              height: 300,
            ),
            LogOutBotton(
              onTap: () => logUserOut(context),
            )
          ],
        ),
      ),
    );
  }
}
