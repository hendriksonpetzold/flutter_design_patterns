import 'package:flutter_design_patterns/pages/patterns/adapter/movie_model.dart';
import 'package:flutter_design_patterns/pages/patterns/adapter/movie_repository.dart';

class ExpensiveRepository {
  Future<List<MovieModel>> movies = MovieRepository().getMovies();
}
