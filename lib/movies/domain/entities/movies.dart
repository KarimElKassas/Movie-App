import 'package:equatable/equatable.dart';

class Movies extends Equatable{
  final int id;
  final String title;
  final String backdropPath;
  final String overview;
  final List<int> genreIds;
  final double voteAverage;
  final String releaseDate;

  const Movies({
      required this.id,
      required this.title,
      required this.backdropPath,
      required this.overview,
      required this.genreIds,
      required this.voteAverage,
      required this.releaseDate});

  @override
  // TODO: implement props
  List<Object?> get props => [
    id,
    title,
    backdropPath,
    overview,
    genreIds,
    voteAverage,
    releaseDate
  ];


}