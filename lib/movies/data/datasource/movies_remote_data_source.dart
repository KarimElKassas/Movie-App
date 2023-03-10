
import 'package:dio/dio.dart';
import 'package:movie_clean/core/network/api_contance.dart';
import 'package:movie_clean/core/network/error_message_model.dart';
import 'package:movie_clean/movies/data/models/movies_model.dart';

import '../../../core/error/exceptions.dart';

abstract class BaseMoviesRemoteDataSource {
  Future<List<MoviesModel>> getNowPlayingMovies();
  Future<List<MoviesModel>> getPopularMovies();
  Future<List<MoviesModel>> getTopRatedMovies();
}
class MoviesRemoteDataSource implements BaseMoviesRemoteDataSource{
  @override
  Future<List<MoviesModel>> getNowPlayingMovies()async {
    final response = await Dio().get(ApiConstance.nowPlayingMoviesEndPoint);

    if(response.statusCode == 200){
      return List<MoviesModel>.from((response.data["results"] as List).map((e) => MoviesModel.fromJson(e)));
    }else{
      throw ServerException(ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MoviesModel>> getPopularMovies()async {
    final response = await Dio().get(ApiConstance.popularMoviesEndPoint);

    if(response.statusCode == 200){
      return List<MoviesModel>.from((response.data["results"] as List).map((e) => MoviesModel.fromJson(e)));
    }else{
      throw ServerException(ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MoviesModel>> getTopRatedMovies()async {
    final response = await Dio().get(ApiConstance.topRatedMoviesEndPoint);

    if(response.statusCode == 200){
      return List<MoviesModel>.from((response.data["results"] as List).map((e) => MoviesModel.fromJson(e)));
    }else{
      throw ServerException(ErrorMessageModel.fromJson(response.data));
    }
  }

}