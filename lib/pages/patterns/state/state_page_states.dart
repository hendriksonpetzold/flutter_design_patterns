abstract class State {
  String? stateName;
  State nextState();
}

class InitialState implements State {
  @override
  State nextState() {
    return LoadingState();
  }

  @override
  String? stateName = 'InitialState';
}

class LoadingState implements State {
  @override
  State nextState() {
    return LoadedState();
  }

  @override
  String? stateName = 'LoadingState';
}

class LoadedState implements State {
  @override
  State nextState() {
    return LoadedState();
  }

  @override
  String? stateName = 'LoadedState';
}
