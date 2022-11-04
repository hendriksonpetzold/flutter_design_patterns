import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/pages/patterns/factory/factory_page_card.dart';

class FactoryPage extends StatelessWidget {
  const FactoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Factory'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FactoryPageCard(
                title: 'Simple Card',
                cardColor: Colors.blue,
              ),
              const SizedBox(
                height: 16,
              ),
              FactoryPageCard.big(
                title: 'Big Card',
                bottonTextTitle: 'A card bigger than other',
                bottonTextDescription: 'With a description',
                cardColor: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
