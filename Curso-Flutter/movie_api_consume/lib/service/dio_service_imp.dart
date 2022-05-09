import 'package:dio/dio.dart';
import 'dio_service.dart';

class DioServiceImp implements DioService{

  @override
  Dio getDio() {
    return Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/4/',
        headers:{
          'content-type': 'application/json;charset=utf-8',
          'authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxYWVjMDdkYWM5MWE1ZmYwMDI0YWUzM2VjYjliZWZkMCIsInN1YiI6IjYyNzUyZGMwMTQ5NTY1MDBhMmY5OGU0YiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.eq4c0Z1Ugx-MTsZqLcxIiNq2rSgBMss0A60YPPVgF78'
        },
      ),
    );
  }
}
