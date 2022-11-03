import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/pages/home/components/home_page_card.dart';
import 'package:flutter_design_patterns/pages/home/components/home_page_cards_title.dart';
import 'package:flutter_design_patterns/pages/home/components/home_page_custom_title.dart';
import 'package:flutter_design_patterns/pages/home/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomeController controller = Get.put(HomeController());
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
                cardColor: Color(0xFFD4D4D4),
              ),
              const SizedBox(
                height: 16,
              ),
              const HomePageCardsTitle(
                leading: 'Home Works',
                trailing: 'View All',
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: PageView.builder(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        HomePageCard.big(
                          title: 'Example',
                          cardColor: const Color(0xFF448AFF),
                          bottonTextTitle: 'Newton low motion',
                          bottonTextDescription: 'Read screens 1.1 - 1.2',
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
