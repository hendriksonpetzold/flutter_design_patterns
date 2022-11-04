import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/pages/patterns/abstract_factory/abstract_factory_page_controller.dart';
import 'package:get/get.dart';

class AbstractFactoryPage extends StatelessWidget {
  AbstractFactoryPage({Key? key}) : super(key: key);
  final AbstractFactoryPageController controller =
      Get.put(AbstractFactoryPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Abstract Factory'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              color: controller.color.primaryColor,
            ),
            Container(
              height: 150,
              width: 150,
              color: controller.color.accentColor,
            ),
            ElevatedButton(
              onPressed: () {
                controller.isDarkTheme = !controller.isDarkTheme;
              },
              child: const Text('Change theme'),
            )
          ],
        ),
      ),
    );
  }
}
