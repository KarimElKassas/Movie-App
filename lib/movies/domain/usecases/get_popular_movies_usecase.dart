import 'package:movie_clean/movies/domain/entities/movies.dart';
import 'package:movie_clean/movies/domain/repository/base_movies_repository.dart';

class GetPopularMoviesUseCase {
  BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUseCase(this.baseMoviesRepository);

  Future<List<Movies>> execute()async {
    return await baseMoviesRepository.getPopularMovies();
  }
}