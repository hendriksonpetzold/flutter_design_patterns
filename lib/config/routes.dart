import 'package:flutter_design_patterns/pages/home/home_page.dart';
import 'package:flutter_design_patterns/pages/patterns/decorator/decorator_page.dart';
import 'package:flutter_design_patterns/pages/patterns/factory/factory_page.dart';
import 'package:flutter_design_patterns/pages/patterns/state/state_page.dart';
import 'package:get/get.dart';

class Routes {
  static final List<GetPage> routes = [
    GetPage(name: '/', page: () => HomePage()),
    GetPage(name: '/factory', page: () => const FactoryPage()),
    GetPage(name: '/state', page: () => StatePage()),
    GetPage(name: '/decorator', page: () => const DecoratorPage()),
  ];
}
