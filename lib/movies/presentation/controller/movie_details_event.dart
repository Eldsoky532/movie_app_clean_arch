part of 'movie_details_bloc.dart';

abstract class MovieDetailsEvent extends Equatable{

  const MovieDetailsEvent();

}

class GetMovieDetailsEvent extends MovieDetailsEvent
{
 final int id;


 GetMovieDetailsEvent(this.id);

  @override
  // TODO: implement props
  List<Object?> get props =>[id];


}

class GetMovieRecommdentionEvent extends MovieDetailsEvent
{
  final int id;


  GetMovieRecommdentionEvent(this.id);

  @override
  // TODO: implement props
  List<Object?> get props =>[id];


}
