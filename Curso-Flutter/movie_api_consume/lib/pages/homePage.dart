import 'package:flutter/material.dart';
import 'package:movie_api_consume/controllers/movie_controller.dart';
import 'package:movie_api_consume/models/movies_model.dart';
import 'package:movie_api_consume/repository/movies_repository_imp.dart';
import 'package:movie_api_consume/service/dio_service_imp.dart';
import 'package:movie_api_consume/utils/apis.utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MovieController _controller = MovieController(
    MoviesRepositoryImp(DioServiceImp()),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            SizedBox(height: 40),
            Text(
              'Movies',
              style: Theme.of(context).textTheme.headline3,
            ),
            ValueListenableBuilder<Movies?>(
              valueListenable: _controller.movies,
              builder: (_, movies, __) {
                return movies != null
                    ? ListView.separated(
                        separatorBuilder: (_, __) => Divider(),
                        shrinkWrap: true,
                        itemCount: movies.listMovies.length,
                        itemBuilder: (_, idx) {
                          final String? posterPath = movies.listMovies[idx].posterPath;
                          if (posterPath != null) {
                            return  Image.network(API.REQUEST_IMG(posterPath));
                          }
                          return Container();
                      }
                    )
                    : Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
