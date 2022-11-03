abstract class HomeState {
  HomeState selecState();
}

class InitialHomeState implements HomeState {
  @override
  HomeState selecState() {
    return LoadingHomeState();
  }
}

class LoadingHomeState implements HomeState {
  @override
  HomeState selecState() {
    Future.delayed(const Duration(seconds: 2));
    return LoadedHomeState();
  }
}

class LoadedHomeState implements HomeState {
  @override
  HomeState selecState() {
    return LoadedHomeState();
  }
}
