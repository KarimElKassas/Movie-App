import 'package:movie_clean/movies/domain/entities/movies.dart';
import 'package:movie_clean/movies/domain/repository/base_movies_repository.dart';

class GetNowPlayingMoviesUseCase{
  BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);

  Future<List<Movies>> execute() async{
    return await baseMoviesRepository.getNowPlayingMovies();
  }
}