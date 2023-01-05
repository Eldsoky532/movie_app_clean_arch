import 'package:movie_app_clean_arch/movies/domain/eintites/geners.dart';

class GenresModel extends Genres
{
  GenresModel({required super.name, required super.id});

  factory GenresModel.fromJson(Map<String , dynamic >json)=>
      GenresModel(
          name: json['name'],
          id: json['id']
      );


}