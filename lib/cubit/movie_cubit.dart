import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_xfers/models/models.dart';
import 'package:movie_xfers/services/services.dart';

part 'movie_state.dart';

class MovieCubit extends Cubit<MovieState> {
  MovieCubit() : super(MovieInitial());

  List<MovieResult> listMovie = [];
  int page = 0;
  int maxPage = 1;



  Future<void> getMovies() async{
    if(page<maxPage){
      if(page==0){
        emit(MovieInitial());
      }

      page++;
      ApiReturnValue<MovieResponse> result = await MovieServices.getMovies(page);

      if(result.value!=null){
        maxPage = result.value.totalPages;
        listMovie.addAll(result.value.results);
        emit(MovieLoaded(listMovie, isMaxLoad: false));
      }else{
        emit(MovieLoadingFailed(result.message));
      }
    }else{
      emit(MovieLoaded(listMovie, isMaxLoad: true));
    }
    
  }
}
