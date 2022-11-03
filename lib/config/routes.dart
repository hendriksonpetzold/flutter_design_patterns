import 'package:flutter_design_patterns/pages/home/home_page.dart';
import 'package:get/get.dart';

class Routes {
  static final List<GetPage> routes = [
    GetPage(name: '/', page: () => HomePage())
  ];
}
