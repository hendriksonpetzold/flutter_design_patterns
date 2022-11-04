import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/pages/patterns/decorator/coffe_shop_decorator.dart';

class DecoratorPage extends StatelessWidget {
  const DecoratorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Decorator'),
      ),
      body: Center(
        child: Text(
          '${Chocolate(products: Caramel(products: Coffe())).cost()}',
        ),
      ),
    );
  }
}
