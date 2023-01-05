import 'package:equatable/equatable.dart';

import '../../../core/utiles/enum.dart';
import '../../domain/entities.dart';

class MoviesState extends Equatable
{
  final List<Movie> nowplayingmovies;
  final RequestState nowplaying;
  final String nowplayingmessage;


  final List<Movie> nowpopulermovies;
  final RequestState nowpopuler;
  final String nowpopulermessage;



  final List<Movie> topratedmovies;
  final RequestState nowtoprated;
  final String nowmessagetoprated;

  MoviesState({
      this.nowplayingmovies=const [],
      this.nowplaying = RequestState.loading,
      this.nowplayingmessage='',
      this.nowpopulermovies=const[],
      this.nowpopuler=RequestState.loading,
      this.nowpopulermessage='',

    this.topratedmovies=const [],

    this.nowtoprated=RequestState.loading,

    this.nowmessagetoprated=''

  });

  MoviesState copywith({
     List<Movie>? nowplayingmovies,
     RequestState? nowplaying,
     String? nowplayingmessage,
     List<Movie>? nowpopulermovies,
     RequestState? nowpopuler,
     String? nowpopulermessage,

     List<Movie>? topratedmovies,
     RequestState? nowtoprated,
     String? nowmessagetoprated,



}){
    return MoviesState(
        nowplayingmovies:nowplayingmovies?? this.nowplayingmovies,
        nowplaying:nowplaying?? this.nowplaying,
        nowplayingmessage:nowplayingmessage ??this.nowplayingmessage,
        nowpopulermovies:nowpopulermovies??this.nowpopulermovies,
        nowpopuler:nowpopuler ??this.nowpopuler,
        nowpopulermessage:nowpopulermessage??this.nowpopulermessage,


        topratedmovies: topratedmovies??this.topratedmovies,
        nowtoprated: nowtoprated??this.nowtoprated,
        nowmessagetoprated: nowmessagetoprated??this.nowmessagetoprated


    );
}

  @override
  List<Object> get props =>[nowplayingmovies,nowplaying,nowplayingmessage,nowpopulermovies,nowpopuler,nowpopulermessage,topratedmovies,nowtoprated,nowmessagetoprated];
}