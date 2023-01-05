import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app_clean_arch/core/utiles/enum.dart';
import 'package:movie_app_clean_arch/movies/data/datasource.dart';
import 'package:movie_app_clean_arch/movies/data/repositery.dart';
import 'package:movie_app_clean_arch/movies/presentation/controller/movie_state.dart';
import 'package:movie_app_clean_arch/movies/presentation/controller/movies_event.dart';

import '../../domain/repositery.dart';
import '../../domain/use_cases/get_now_playing.dart';
import '../../domain/use_cases/get_popular.dart';
import '../../domain/use_cases/get_toprated.dart';

class MovieBloc extends Bloc<MoviesEvent,MoviesState>
{

  GetNowPlayingUsecase getNowPlayingUsecase;
  GetPopulerMovieUsecase getPopulerMovieUsecase;
  GetTopRatedUsecase getTopRatedUsecase;

  MovieBloc(this.getNowPlayingUsecase,this.getPopulerMovieUsecase,this.getTopRatedUsecase):super(MoviesState()){
    on<GetNowPlayingEvent>((event, emit)async{
      //usecase
      final result=await getNowPlayingUsecase.execute();
      result.fold((l) =>emit(
          state.copywith(
              nowplaying: RequestState.error,
              nowplayingmessage: l.message
          )),
              (r) =>
                  emit(state.copywith(nowplayingmovies: r,nowplaying: RequestState.loaded)));


    });


    on<GetPopularMoviesEvent>((event, emit)async{
      final resultt=await getPopulerMovieUsecase.execute();
      resultt.fold((l) =>
          emit(state.copywith(nowpopuler: RequestState.error,nowpopulermessage: l.message)),
              (r) => emit(state.copywith(nowpopulermovies: r,nowpopuler: RequestState.loaded)));

    });




    on<GetTopRatedMoviesEvent>((event, emit)async{
      final resultt=await getTopRatedUsecase.execute();
      resultt.fold((l) =>
          emit(state.copywith(nowtoprated: RequestState.error,nowmessagetoprated: l.message)),
              (r) => emit(state.copywith(topratedmovies: r,nowtoprated: RequestState.loaded)));

    });


  }
}