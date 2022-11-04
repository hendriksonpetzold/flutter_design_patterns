import 'package:flutter_design_patterns/pages/patterns/adapter/movie_model.dart';

abstract class Adapter {
  MovieModel adapt(Map<String, dynamic> map);
}

class MovieAdapter implements Adapter {
  @override
  MovieModel adapt(Map<String, dynamic> map) {
    return MovieModel(
      movieName: map['title'] as String,
    );
  }
}
