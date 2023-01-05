import 'package:dartz/dartz.dart';
import 'package:movie_app_clean_arch/movies/domain/entities.dart';
import 'package:movie_app_clean_arch/movies/domain/repositery.dart';

import '../../../core/error/failure.dart';

class GetTopRatedUsecase
{
  final BaseMovieRepositery baseMovieRepositery;
  GetTopRatedUsecase(this.baseMovieRepositery);


  Future<Either<Failure, List<Movie>>> execute()
  async {
    return await baseMovieRepositery.getTopRatedMovie();
  }



}