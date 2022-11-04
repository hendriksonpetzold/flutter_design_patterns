import 'package:dio/dio.dart';
import 'package:flutter_design_patterns/pages/patterns/adapter/movie_adapter.dart';
import 'package:flutter_design_patterns/pages/patterns/adapter/movie_model.dart';

class MovieRepository {
  Dio dio = Dio();
  Adapter movieAdapter = MovieAdapter();

  Future<List<MovieModel>> getMovies() async {
    final response = await dio.get(
        'https://api.themoviedb.org/3/movie/popular?api_key=ca72357c358861d55696a6d8da747b13&language=en-US&page=1');
    final List result = response.data['results'];
    return result.map((e) => movieAdapter.adapt(e)).toList();
  }
}
