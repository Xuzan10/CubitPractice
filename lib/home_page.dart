import 'package:cubit_practice/cubit/movie_cubit.dart';
import 'package:cubit_practice/repository/movies_repository.dart';
import 'package:cubit_practice/state/movie_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MoviesCubit moviesCubit;

  @override
  void initState() {
    super.initState();
    moviesCubit = BlocProvider.of<MoviesCubit>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Trending Movies'),
        ),
        body: BlocBuilder<MoviesCubit, MoviesState>(
          cubit: moviesCubit,
          builder: (context, state) {
            if (state is LoadingState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is LoadedState) {
              return Container(
                child: GridView.builder(
                    itemCount: state.movies.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 1 / 2),
                    itemBuilder: (context, index) {
                      return Image.network(state.movies[index],
                          height: 50, fit: BoxFit.fill);
                    }),
              );
            }


            return Center(
              child: RaisedButton(
                child: Text('Get Movies'),
                onPressed: () {
                  moviesCubit.getTrendingMovies();
                },
              ),
            );
          },
        ));
  }
}
