import 'package:movie_app_clean_arch/movies/data/models/geners_model.dart';
import 'package:movie_app_clean_arch/movies/domain/eintites/movie_deatails.dart';

class MovieDetailsModel extends MovieDetails
{
  MovieDetailsModel({required super.backdropPath, required super.id, required super.overview, required super.releaseDate, required super.runtime, required super.title, required super.voteAverage, required super.genreIds});




  factory MovieDetailsModel.fromJson(Map<String , dynamic> json)=>
      MovieDetailsModel(
          backdropPath: json['backdrop_path'],
          id: json['id'],
          overview: json['overview'],
          releaseDate: json['release_date'],
          runtime: json['runtime'],
          title: json['title'],
          voteAverage: json['vote_average'].toDouble(),
          genreIds: List<GenresModel>.from(json['genres'].map((x)=>GenresModel.fromJson(x)))
      );







}