import 'package:flutter/animation.dart';
import 'package:flutter_design_patterns/models/home_work_card_model.dart';
import 'package:flutter_design_patterns/pages/home/home_page_state.dart';

import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<HomeState> state = Rx<HomeState>(InitialHomeState());

  final List<HomeWorkCardModel> homeWorkCard = [
    HomeWorkCardModel(
      title: 'Title1',
      bottonTextTitle: 'Newton Low Motion',
      bottonTextDescription: 'Read screens 1.1 - 1.2',
      image: '',
      cardColor: const Color(0xFF448AFF),
    ),
    HomeWorkCardModel(
      title: 'Title2',
      bottonTextTitle: 'Newton Low Motion',
      bottonTextDescription: 'Read screens 1.1 - 1.2',
      image: '',
      cardColor: const Color(0xFFFF6044),
    ),
    HomeWorkCardModel(
      title: 'Title3',
      bottonTextTitle: 'Newton Low Motion',
      bottonTextDescription: 'Read screens 1.1 - 1.2',
      image: '',
      cardColor: const Color(0xFF448AFF),
    ),
  ];
}
