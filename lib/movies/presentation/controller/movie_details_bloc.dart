import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app_clean_arch/core/utiles/enum.dart';
import 'package:movie_app_clean_arch/movies/domain/eintites/movie_deatails.dart';
import 'package:movie_app_clean_arch/movies/domain/eintites/recommention/recommdention.dart';

import '../../domain/use_cases/get_movie_details.dart';
import '../../domain/use_cases/get_recommdention_movies.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {

  GetMovieDetailsUseCases  getMovieDetailsUseCases;
  GetMovieRecommdentionUseCases getMovieRecommdentionUseCases;

  MovieDetailsBloc(this.getMovieDetailsUseCases,this.getMovieRecommdentionUseCases) : super(MovieDetailsState()) {
    on<GetMovieDetailsEvent>((event, emit) async{

     final result = await getMovieDetailsUseCases.getMovieDetails(event.id);

     result.fold((l) =>emit(
         state.copywith(
             moviestate: RequestState.error,
             meesage: l.message
         )),
             (r) =>
             emit(state.copywith(movieDetails: r,moviestate: RequestState.loaded)));


    });

    on<GetMovieRecommdentionEvent>((event, emit) async{

      final result = await getMovieRecommdentionUseCases.getMovieRecommdention(event.id);

      result.fold((l) =>emit(
          state.copywith(
              moviestaterecommdention: RequestState.error,
              meesagere: l.message
          )),
              (r) =>
              emit(state.copywith(movierecommdention: r,moviestaterecommdention: RequestState.loaded)));


    });
  }
}
