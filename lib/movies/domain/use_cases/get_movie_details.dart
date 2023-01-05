import 'package:dartz/dartz.dart';
import 'package:movie_app_clean_arch/core/error/failure.dart';
import 'package:movie_app_clean_arch/movies/domain/eintites/movie_deatails.dart';
import 'package:movie_app_clean_arch/movies/domain/repositery.dart';

class GetMovieDetailsUseCases
{

BaseMovieRepositery baseMovieRepositery;
GetMovieDetailsUseCases(this.baseMovieRepositery);

Future<Either<Failure,MovieDetails>> getMovieDetails(int movieid)async{
 return await baseMovieRepositery.getMovieDetails(movieid);
}


}