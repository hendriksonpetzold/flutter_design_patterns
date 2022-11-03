import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/pages/home/components/home_page_card.dart';
import 'package:flutter_design_patterns/pages/home/components/home_page_cards_title.dart';
import 'package:flutter_design_patterns/pages/home/components/home_page_custom_title.dart';
import 'package:flutter_design_patterns/pages/home/home_controller.dart';
import 'package:flutter_design_patterns/pages/home/home_page_state.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    if (controller.state.value is InitialHomeState) {
      controller.state.value = InitialHomeState().selecState();
      return Scaffold(
          body: Container(
        height: 50,
        width: 50,
        color: Colors.red,
      ));
    } else if (controller.state.value is LoadingHomeState) {
      controller.state.value = LoadingHomeState().selecState();
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else if (controller.state.value is LoadedHomeState) {
      controller.state.value = LoadedHomeState().selecState();
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
                    itemCount: controller.homeWorkCard.length,
                    itemBuilder: (context, index) {
                      final card = controller.homeWorkCard[index];
                      return Column(
                        children: [
                          HomePageCard.big(
                            topPadding: index != 0 ? 50 : 20,
                            title: card.title,
                            cardColor: card.cardColor,
                            bottonTextTitle: card.bottonTextTitle,
                            bottonTextDescription: card.bottonTextDescription,
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
    return Container();
  }
}
