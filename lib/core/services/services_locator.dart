import 'package:get_it/get_it.dart';
import 'package:movies_app/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies_app/movies/data/repository/movies_repository.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_now_playing_movies_usecae.dart';
import 'package:movies_app/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_top_rated_movies_usecase.dart';
import 'package:movies_app/movies/presentation/cotroller/bloc/movie_details_bloc.dart';
import 'package:movies_app/movies/presentation/cotroller/bloc/movies_bloc_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    // Bloc
    //  هعمل اوبجكت جديد منه movie bloc كل ما تنادي علي
    sl.registerFactory(() => MoviesBloc(
          sl(),
          sl(),
          sl(),
        ));
    sl.registerFactory(() => MovieDetailsBloc(sl()));

// Usecases
    sl.registerLazySingleton(() => GetNowPlayingMoviesUsecase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUsecase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUsecase(sl()));
    sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));

    // Repository
    sl.registerLazySingleton<BaseMoviesRepository>(
        () => (MoviesRepository(sl())));
// Data source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
