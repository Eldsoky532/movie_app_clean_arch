import 'package:dartz/dartz.dart';
import 'package:movie_app_clean_arch/core/error/exception.dart';
import 'package:movie_app_clean_arch/core/error/failure.dart';
import 'package:movie_app_clean_arch/movies/data/models/modvie_details_model.dart';
import 'package:movie_app_clean_arch/movies/domain/eintites/movie_deatails.dart';
import 'package:movie_app_clean_arch/movies/domain/eintites/recommention/recommdention.dart';
import 'package:movie_app_clean_arch/movies/domain/entities.dart';
import 'package:movie_app_clean_arch/movies/domain/repositery.dart';

import 'datasource.dart';

class MoviesRepositery extends BaseMovieRepositery {
  final BaseMovieRemote baseMovieRemote;

  MoviesRepositery(this.baseMovieRemote);



  @override
  Future<Either<Failure, List<Movie>>> getnowplaying() async {
    final result = await baseMovieRemote.getNowPlayingMovies();
    try {
      return Right(result);
    }on ServerException catch (e) {
      return Left(ServerFailure(e.erorrMessage.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovie() async{
    final result = await baseMovieRemote.getPopularMovies();
    try {
      return Right(result);
    }on ServerException catch (e) {
      return Left(ServerFailure(e.erorrMessage.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovie() async{
    final result = await baseMovieRemote.getTopRatedMovies();
    try {
      return Right(result);
    }on ServerException catch (e) {
      return Left(ServerFailure(e.erorrMessage.statusMessage));
    }
  }

  @override
  Future<Either<Failure, MovieDetails>> getMovieDetails(int movieid) async{
    final result = await baseMovieRemote.getMovieDatails(movieid);
    try {
      return Right(result);
    }on ServerException catch (e) {
      return Left(ServerFailure(e.erorrMessage.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Recommendation>>> getRecommdention(int reid) async{
    final result = await baseMovieRemote.getRecommdention(reid);
    try {
      return Right(result);
    }on ServerException catch (e) {
      return Left(ServerFailure(e.erorrMessage.statusMessage));
    }
  }
}
