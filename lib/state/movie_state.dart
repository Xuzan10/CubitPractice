import 'package:equatable/equatable.dart';

abstract class MoviesState extends Equatable {}

class InitialState extends MoviesState {
  @override
  List<Object> get props => [];
}

class LoadingState extends MoviesState {
  @override
  List<Object> get props => [];
}

class LoadedState extends MoviesState {
  LoadedState(this.movies);

  final List<String> movies;

  @override
  List<Object> get props => [movies];
}

class ErrorState extends MoviesState {
  @override
  List<Object> get props => [];
}