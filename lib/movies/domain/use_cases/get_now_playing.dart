import 'package:dartz/dartz.dart';
import 'package:movie_app_clean_arch/movies/domain/entities.dart';

import '../../../core/error/failure.dart';
import '../repositery.dart';

class GetNowPlayingUsecase
{
  final BaseMovieRepositery baseMovieRepositery;
  GetNowPlayingUsecase(this.baseMovieRepositery);


 Future<Either<Failure, List<Movie>>> execute()
 async {
    return await baseMovieRepositery.getnowplaying();
  }



}