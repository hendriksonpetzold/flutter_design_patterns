import 'package:flutter_design_patterns/pages/patterns/abstract_factory/abstract_factory_colors.dart';
import 'package:get/get.dart';

class AbstractFactoryPageController extends GetxController {
  bool isDarkTheme = false;
  late Colors color = isDarkTheme ? DarkModeColors() : LightModeColors();
}
