part of 'movie_cubit.dart';

abstract class MovieState extends Equatable {
  const MovieState();

  @override
  List<Object> get props => [];
}

class MovieInitial extends MovieState {
   MovieInitial();

  @override
  List<Object> get props => super.props;
}

class MovieLoaded extends MovieState{
  final List<MovieResult> movie;
  final bool isMaxLoad;

  MovieLoaded(this.movie, {this.isMaxLoad = false});

  @override
  List<Object> get props => [movie, isMaxLoad];
}

class MovieLoadingFailed extends MovieState{
  final String message;

  MovieLoadingFailed(this.message);
  

  @override
  List<Object> get props => [message];

}

class MovieLoadNext extends MovieState {
   MovieLoadNext();

  @override
  List<Object> get props => super.props;
}

class MovieLoadingMax extends MovieState{

  MovieLoadingMax();

  @override
  List<Object> get props => super.props;

}



