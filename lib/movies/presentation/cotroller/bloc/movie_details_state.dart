part of 'movie_details_bloc.dart';

class MovieDetailsState extends Equatable {

 

  final MovieDetail? movieDetail;
  final RequestState movieDetailsState;
  final String movieDetailsMessage;
  
  final RequestState recommendationState;
  final String recommendationMessage;
  
  const MovieDetailsState({
    this.movieDetail,
    this.movieDetailsState = RequestState.loading,
    this.movieDetailsMessage = '',
   
    this.recommendationState = RequestState.loading,
    this.recommendationMessage = '',
  });
  MovieDetailsState copyWith({
    MovieDetail? movieDetail,
    RequestState? movieDetailsState,
    String? movieDetailsMessage,
   
    RequestState? recommendationState,
    String? recommendationMessage,
  }) 
  
 
  
  {
    return MovieDetailsState(
      movieDetail: movieDetail ?? this.movieDetail,
      movieDetailsState: movieDetailsState ?? this.movieDetailsState,
      movieDetailsMessage: movieDetailsMessage ?? this.movieDetailsMessage,
    
      recommendationState: recommendationState ?? this.recommendationState,
      recommendationMessage:
          recommendationMessage ?? this.recommendationMessage,
    );
  }

  @override
  List<Object?> get props => [
        movieDetail,
        movieDetailsState,
        movieDetailsMessage,
      
        recommendationState,
        recommendationMessage,
      ];
}