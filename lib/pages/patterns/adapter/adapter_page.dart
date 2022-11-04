import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/pages/patterns/adapter/adapter_page_controller.dart';
import 'package:get/get.dart';

class AdapterPage extends StatelessWidget {
  AdapterPage({Key? key}) : super(key: key);
  final AdapterPageController controller = Get.put(AdapterPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adapter'),
      ),
      body: Obx(
        () {
          return ListView.builder(
            itemCount: controller.movies.length,
            itemBuilder: (context, index) {
              final movie = controller.movies[index];
              return ListTile(
                title: Text(movie.movieName),
              );
            },
          );
        },
      ),
    );
  }
}
