import 'package:flutter_design_patterns/pages/patterns/abstract_factory/abstract_factory_colors.dart';
import 'package:flutter_design_patterns/pages/patterns/singleton/singleton_theme.dart';
import 'package:get/get.dart';

class AbstractFactoryPageController extends GetxController {
  @override
  void onInit() {
    print(isDarkTheme);
    super.onInit();
  }

  SingletonTheme theme = SingletonTheme.getInstance();
  late bool isDarkTheme = theme.isDarkMode;
  late Colors color = isDarkTheme ? DarkModeColors() : LightModeColors();
}
