import 'package:flutter_design_patterns/pages/patterns/adapter/movie_model.dart';
import 'package:flutter_design_patterns/pages/patterns/adapter/movie_repository.dart';
import 'package:get/get.dart';

class AdapterPageController extends GetxController {
  MovieRepository repository = MovieRepository();
  RxList<MovieModel> movies = RxList([]);
  @override
  void onInit() async {
    movies.value = await repository.getMovies();
    super.onInit();
  }
}
