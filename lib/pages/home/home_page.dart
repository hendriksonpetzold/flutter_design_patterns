import 'package:flutter/material.dart';

import 'package:flutter_design_patterns/pages/home/home_controller.dart';

import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/factory');
              },
              child: const Text('Factory'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/state');
              },
              child: const Text('State'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/decorator');
              },
              child: const Text('Decorator'),
            ),
          ],
        ),
      ),
    );
  }
}
