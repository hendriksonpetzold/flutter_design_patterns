import 'package:flutter_design_patterns/pages/patterns/state/state_page_states.dart';
import 'package:get/get.dart';

class StatePageController extends GetxController {
  RxString stateButtonName = RxString('null');
  State state = InitialState();

  void onStateButtonPressed() {
    stateButtonName.value = state.stateName!;
    state = state.nextState();
  }
}
