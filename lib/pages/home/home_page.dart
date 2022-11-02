import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/pages/home/components/home_page_card.dart';
import 'package:flutter_design_patterns/pages/home/components/home_page_cards_title.dart';
import 'package:flutter_design_patterns/pages/home/components/home_page_custom_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const HomePageCustomTitle(),
              const SizedBox(
                height: 60,
              ),
              Container(),
              const HomePageCardsTitle(
                leading: 'Classes',
                trailing: '5 classes today',
              ),
              const SizedBox(
                height: 16,
              ),
              const HomePageCard(
                title: 'History',
              ),
              const SizedBox(
                height: 16,
              ),
              HomePageCard.big(
                title: 'Example',
                bottonWidget: const Text('test text'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
