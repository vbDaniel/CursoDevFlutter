import 'package:movie_api_consume/models/movies_model.dart';
import 'package:movie_api_consume/repository/movie_repository.dart';
import 'package:movie_api_consume/service/dio_service.dart';
import 'package:movie_api_consume/utils/apis.utils.dart';

class MoviesRepositoryImp implements MoviesRepository {
  final DioService _dioService;

  MoviesRepositoryImp(this._dioService);

  @override
  Future<Movies> getMovies() async {
    var result = await _dioService.getDio().get(API.REQUEST_MOVIE_LIST);
    return Movies.fromJson(result.data);
  }
}
