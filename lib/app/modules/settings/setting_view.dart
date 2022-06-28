import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'theme_controller.dart';

class SettingPage extends StatelessWidget {
  SettingPage({Key? key}) : super(key: key);
  // find the theme controller
  final ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Theme change'),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Change Theme'),
              onPressed: () {
                if (Get.isDarkMode) {
                  themeController.changeThemeMode(ThemeMode.light);
                  themeController.saveTheme(false);
                } else {
                  themeController.changeThemeMode(ThemeMode.dark);
                  themeController.saveTheme(true);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
