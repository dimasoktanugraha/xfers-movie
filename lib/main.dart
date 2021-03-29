import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_xfers/common/styles.dart';
import 'package:movie_xfers/cubit/cubit.dart';
import 'package:movie_xfers/ui/pages/pages.dart';

import 'common/navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MovieCubit>(create: (context) => MovieCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Movie',
        theme: ThemeData(
          primaryColor: primaryColor,
          primaryColorDark: primaryColor,
          accentColor: secondaryColor,
        ),
        navigatorKey: navigatorKey,
        initialRoute: SplashPage.routeName,
        routes: {
          SplashPage.routeName: (context) => SplashPage(),
          MainPage.routeName: (context) => MainPage(),
          DetailPage.routeName: (context) => DetailPage(
            movie: ModalRoute.of(context).settings.arguments,
          ),
        },
      ),
    );
  }
}

