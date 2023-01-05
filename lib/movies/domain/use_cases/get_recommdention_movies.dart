import 'package:dartz/dartz.dart';
import 'package:movie_app_clean_arch/core/error/failure.dart';
import 'package:movie_app_clean_arch/movies/domain/eintites/movie_deatails.dart';
import 'package:movie_app_clean_arch/movies/domain/repositery.dart';

import '../eintites/recommention/recommdention.dart';

class GetMovieRecommdentionUseCases
{

  BaseMovieRepositery baseMovieRepositery;
  GetMovieRecommdentionUseCases(this.baseMovieRepositery);

  Future<Either<Failure,List<Recommendation>>> getMovieRecommdention(int reid)async{
    return await baseMovieRepositery.getRecommdention(reid);
  }


}