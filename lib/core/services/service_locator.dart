
import 'package:get_it/get_it.dart';
import 'package:movie_app_clean_arch/movies/data/datasource.dart';
import 'package:movie_app_clean_arch/movies/data/repositery.dart';
import 'package:movie_app_clean_arch/movies/domain/use_cases/get_movie_details.dart';
import 'package:movie_app_clean_arch/movies/domain/use_cases/get_popular.dart';
import 'package:movie_app_clean_arch/movies/domain/use_cases/get_recommdention_movies.dart';
import 'package:movie_app_clean_arch/movies/domain/use_cases/get_toprated.dart';
import 'package:movie_app_clean_arch/movies/presentation/controller/movie_details_bloc.dart';
import 'package:movie_app_clean_arch/movies/presentation/controller/movies_bloc.dart';

import '../../movies/domain/repositery.dart';
import '../../movies/domain/use_cases/get_now_playing.dart';

final sl=GetIt.instance;
class ServicesLocator
{
  void init()
  {
    sl.registerFactory(() => MovieBloc(sl(),sl(),sl()));
    sl.registerFactory(() => MovieDetailsBloc(sl(),sl()));

    sl.registerLazySingleton(() => GetNowPlayingUsecase(sl()));
    sl.registerLazySingleton(() => GetPopulerMovieUsecase(sl()));
    sl.registerLazySingleton(() => GetTopRatedUsecase(sl()));
    sl.registerLazySingleton(() => GetMovieDetailsUseCases(sl()));
    sl.registerLazySingleton(() => GetMovieRecommdentionUseCases(sl()));




    sl.registerLazySingleton<BaseMovieRepositery>(() => MoviesRepositery(sl()));
    sl.registerLazySingleton<BaseMovieRemote>(() => MovieRemoteDataSource());
  }
}