import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/pages/patterns/state/state_page_controller.dart';
import 'package:get/get.dart';

class StatePage extends StatelessWidget {
  StatePage({Key? key}) : super(key: key);

  final StatePageController controller = Get.put(StatePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () {
                return ElevatedButton(
                  onPressed: () {
                    controller.onStateButtonPressed();
                  },
                  child: Text(controller.stateButtonName.value),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
