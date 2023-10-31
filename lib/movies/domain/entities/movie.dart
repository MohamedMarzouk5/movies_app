import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String backdropPath;
  final List<int> genreIds;
  final String overview;
  final double voteAverage;
  final String releaseDate;

// required
// required  هنحط دي ؟ لو لا نحط  null علي حسب اتفاق مع الباك انند لو هو مرجع حاجه
  const Movie({
    required this.id,
    required this.title,
    required this.backdropPath,
    required this.genreIds,
    required this.overview,
    required this.voteAverage,
    required this.releaseDate,
  });

// Equatable    دي بتقارن البياانات اللي في الاوبجكت مع بعضها علشان ميجليش نفس البيانات مرتين
// ^    دي بتشوف مكان الاوبجكت
  @override
  List<Object> get props => [
        id,
        title,
        backdropPath,
        genreIds,
        overview,
        voteAverage,
        releaseDate,
      ];
}
