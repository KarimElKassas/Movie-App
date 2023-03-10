import 'package:movie_clean/movies/domain/entities/movies.dart';
import 'package:movie_clean/movies/domain/repository/base_movies_repository.dart';

class GetTopRatedMoviesUseCase{
  BaseMoviesRepository baseMoviesRepository;

  GetTopRatedMoviesUseCase(this.baseMoviesRepository);

  Future<List<Movies>> execute() async {
    return await baseMoviesRepository.getTopRatedMovies();
  }
}