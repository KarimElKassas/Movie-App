import 'package:movie_clean/movies/domain/entities/movies.dart';

abstract class BaseMoviesRepository{
  Future<List<Movies>> getNowPlayingMovies();
  Future<List<Movies>> getPopularMovies();
  Future<List<Movies>> getTopRatedMovies();
}