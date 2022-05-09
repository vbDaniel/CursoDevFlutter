import 'package:movie_api_consume/models/movies_model.dart';

abstract class MoviesRepository {
  Future<Movies> getMovies();
}
