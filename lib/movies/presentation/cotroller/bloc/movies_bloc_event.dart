part of 'movies_bloc_bloc.dart';

abstract class MoviesBlocEvent extends Equatable {
  const MoviesBlocEvent();

  @override
  List<Object> get props => [];
}

class GetNowPlayingMoviesEvent extends MoviesBlocEvent {}

class GetPopularMoviesEvent extends MoviesBlocEvent {}

class GetTopRatedMoviesEvent extends MoviesBlocEvent {}
