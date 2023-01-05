part of 'movie_details_bloc.dart';


class MovieDetailsState extends Equatable {


  final MovieDetails? movieDetails;
  final RequestState moviestate;
  final String meesage;


  final List<Recommendation> movierecommdention;
  final RequestState moviestaterecommdention;
  final String meesagere;

  MovieDetailsState({
    this.movieDetails,
    this.moviestate = RequestState.loading,
    this.meesage = '',
    this.movierecommdention=const [],
    this.moviestaterecommdention=RequestState.loading,
    this.meesagere=''

  });

  MovieDetailsState copywith({
     MovieDetails? movieDetails,
     RequestState? moviestate,
     String? meesage,
     List<Recommendation>?  movierecommdention,
     RequestState? moviestaterecommdention,
     String? meesagere,
}){
    return MovieDetailsState(
      movieDetails: movieDetails??this.movieDetails,
      moviestate: moviestate??this.moviestate,
      meesage: meesage??this.meesage,
      movierecommdention:movierecommdention??this.movierecommdention,
      moviestaterecommdention: moviestaterecommdention??this.moviestaterecommdention,
      meesagere: meesagere??this.meesagere
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props =>[movieDetails,moviestate,meesage];

}

