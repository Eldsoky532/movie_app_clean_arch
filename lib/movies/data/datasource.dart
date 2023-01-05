import 'package:dio/dio.dart';
import 'package:movie_app_clean_arch/core/error/exception.dart';
import 'package:movie_app_clean_arch/core/utiles/app_constant.dart';
import 'package:movie_app_clean_arch/movies/data/model.dart';
import 'package:movie_app_clean_arch/movies/data/models/modvie_details_model.dart';
import 'package:movie_app_clean_arch/movies/data/models/recommdention_model.dart';

import '../../core/network/error_meessage.dart';

abstract class BaseMovieRemote
{
  Future<List<MovieModel>>getNowPlayingMovies();

  Future<List<MovieModel>>getPopularMovies();

  Future<List<MovieModel>>getTopRatedMovies();

  Future<MovieDetailsModel>getMovieDatails(int movieid);

  Future<List<RecommdentionModel>>getRecommdention(int movieid);


}



class MovieRemoteDataSource extends BaseMovieRemote
{

  @override
  Future<List<MovieModel>>getNowPlayingMovies()
  async{
    final response=await Dio().get(
      AppConstant.nowplayingmoviespath
    );
    if(response.statusCode==200)
      {
        return List<MovieModel>.from((response.data['results']as List).map((e)=>MovieModel.fromJson(e)));
      }else
        {
          throw ServerException(erorrMessage: response.data);
         }
  }

  @override
  Future<List<MovieModel>> getPopularMovies()
    async{
      final response=await Dio().get(
          AppConstant.nowpopularmoviespath
      );
      if(response.statusCode==200)
      {
        return List<MovieModel>.from((response.data['results']as List).map((e)=>MovieModel.fromJson(e)));
      }else
      {
        throw ServerException(erorrMessage: response.data);
      }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies()
    async{
      final response=await Dio().get(
          AppConstant.nowTopRatedmoviespath
      );
      if(response.statusCode==200)
      {
        return List<MovieModel>.from((response.data['results']as List).map((e)=>MovieModel.fromJson(e)));
      }else
      {
        throw ServerException(erorrMessage: response.data);
      }
  }

  @override
  Future<MovieDetailsModel> getMovieDatails(int movieid)
    async{
      final response=await Dio().get(
          AppConstant.MovieDetailspath(movieid)
      );
      if(response.statusCode==200)
      {
        return await MovieDetailsModel.fromJson(response.data);
      }else
      {
        throw ServerException(erorrMessage: response.data);
      }
  }

  @override
  Future<List<RecommdentionModel>> getRecommdention(int movieid)
    async{
      final response=await Dio().get(
          AppConstant.MovieRecommdentionspath(movieid)
      );
      if(response.statusCode==200)
      {
        return List<RecommdentionModel>.from((response.data['results']as List).map((e)=>RecommdentionModel.fromJson(e)));
      }else
      {
        throw ServerException(erorrMessage: response.data);
      }
  }






}