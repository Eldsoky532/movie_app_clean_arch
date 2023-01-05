import 'package:movie_app_clean_arch/movies/domain/eintites/recommention/recommdention.dart';

class RecommdentionModel extends Recommendation
{
  RecommdentionModel(
      { super.backdropPath,
        required super.id});

  factory RecommdentionModel.fromJson(Map<String , dynamic >json)=>
      RecommdentionModel(
          backdropPath: json['backdrop_path'],
          id: json['id']
      );

}