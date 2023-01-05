import 'package:equatable/equatable.dart';
import 'package:movie_app_clean_arch/movies/domain/eintites/geners.dart';

class MovieDetails extends Equatable
{
  final String backdropPath;
  final int id;
  final String overview;
  final String releaseDate;
  final int runtime;
  final String title;
  final double voteAverage;
  final List<Genres> genreIds;



  MovieDetails( {required this.backdropPath,required this.id,required this.overview,required this.releaseDate,
     required this.runtime,required this.title,required this.voteAverage,required this.genreIds,});

  @override
  // TODO: implement props
  List<Object?> get props => [backdropPath,id,overview,releaseDate,runtime,title,voteAverage,genreIds];




}