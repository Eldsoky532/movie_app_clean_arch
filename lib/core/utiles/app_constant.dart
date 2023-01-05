class AppConstant
{
  static const String baseurl='https://www.themoviedb.org/3/';
  static const String apikey='ec86f16f00f6bd6f65cf5f6035a1cdc6';

  static const String nowplayingmoviespath='https://api.themoviedb.org/3/movie/now_playing?api_key=ec86f16f00f6bd6f65cf5f6035a1cdc6';

  static const String nowpopularmoviespath='https://api.themoviedb.org/3/movie/popular?api_key=ec86f16f00f6bd6f65cf5f6035a1cdc6';


  static const String nowTopRatedmoviespath='https://api.themoviedb.org/3/movie/top_rated?api_key=ec86f16f00f6bd6f65cf5f6035a1cdc6';


  static  String MovieDetailspath(int movieid)=>'https://api.themoviedb.org/3/movie/$movieid?api_key=ec86f16f00f6bd6f65cf5f6035a1cdc6';


  static  String MovieRecommdentionspath(int movieid)=>'https://api.themoviedb.org/3/movie/$movieid/recommendations?api_key=ec86f16f00f6bd6f65cf5f6035a1cdc6';



  static const String baseimageurl='https://image.tmdb.org/t/p/w500';


  static  String imageurl(String path)=>'$baseimageurl$path';


}
