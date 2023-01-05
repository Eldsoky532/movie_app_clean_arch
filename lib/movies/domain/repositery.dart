import 'package:dartz/dartz.dart';
import 'package:movie_app_clean_arch/movies/domain/eintites/movie_deatails.dart';
import 'package:movie_app_clean_arch/movies/domain/eintites/recommention/recommdention.dart';
import 'package:movie_app_clean_arch/movies/domain/entities.dart';

import '../../core/error/failure.dart';

abstract class BaseMovieRepositery
{
  Future<Either<Failure, List<Movie>>> getnowplaying();

  Future<Either<Failure, List<Movie>>> getPopularMovie();

  Future<Either<Failure, List<Movie>>> getTopRatedMovie();


  Future<Either<Failure, MovieDetails>> getMovieDetails(int movieid);

  Future<Either<Failure, List<Recommendation>>> getRecommdention(int reid);





}