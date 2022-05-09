import 'package:flutter/material.dart';
import 'package:movie_api_consume/models/movies_model.dart';
import 'package:movie_api_consume/repository/movie_repository.dart';

class MovieController {
  final MoviesRepository _moviesRepository;
  MovieController(this._moviesRepository){
    fetch();
  }

  ValueNotifier<Movies?> movies = ValueNotifier<Movies?>(null);

  fetch() async {
    movies.value = await _moviesRepository.getMovies();
  }
}
