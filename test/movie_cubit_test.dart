import 'package:movie_xfers/cubit/cubit.dart';
import 'package:test/test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
    group('MovieBloc', () {

      MovieCubit movieCubit;

      setUp(() {
          movieCubit = MovieCubit();
      });

      blocTest(
        'get data',
        build: () => movieCubit,
        act: (bloc) => bloc.getMovies(),
        expect: () => [1],
    );
  });
}