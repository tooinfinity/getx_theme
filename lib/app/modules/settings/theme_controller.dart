import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/services/storage/services.dart';
import '../../core/utils/keys.dart';

class ThemeController extends GetxController {
  // create an instance of storage service
  final StorageService _storageService = Get.find<StorageService>();
  // create a theme mode variable
  ThemeMode get theme => _loadThemeMode();

  // load theme mode from storage
  ThemeMode _loadThemeMode() {
    final String themeMode = _storageService.read<String>(THEME_KEY);
    return themeMode == 'dark' ? ThemeMode.dark : ThemeMode.light;
  }

  // save the theme mode
  void saveTheme(bool isDark) =>
      _storageService.write(THEME_KEY, isDark ? 'dark' : 'light');

  // change the theme mode
  void changeThemeMode(ThemeMode themeMode) => Get.changeThemeMode(themeMode);

  //change the theme data
  void changeThemeData(ThemeData themeData) => Get.changeTheme(themeData);
}
