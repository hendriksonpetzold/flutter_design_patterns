import 'package:flutter_design_patterns/pages/patterns/adapter/movie_model.dart';
import 'package:flutter_design_patterns/pages/patterns/proxy/expensive_repository.dart';

class LazyProxyRepository {
  ExpensiveRepository? expensiveRepository;

  Future<List<MovieModel>> getMovies() async {
    expensiveRepository = ExpensiveRepository();
    final movies = await expensiveRepository!.movies;
    return movies;
  }
}
