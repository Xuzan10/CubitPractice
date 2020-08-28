import 'package:bloc/bloc.dart';
import 'package:cubit_practice/repository/movies_repository.dart';
import 'package:cubit_practice/state/movie_state.dart';

class MoviesCubit extends Cubit<MoviesState> {
  final MoviesRepository repository;

  MoviesCubit({this.repository}) : super(InitialState());

  void getTrendingMovies() async {
    try {
      emit(LoadingState());
      await Future.delayed(Duration(seconds: 2));
      final movies = await repository.getMovies();
      emit(LoadedState(movies));
    } catch (e) {
      emit(ErrorState());
    }
  }
}
