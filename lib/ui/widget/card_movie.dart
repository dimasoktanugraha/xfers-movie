import 'package:flutter/material.dart';
import 'package:movie_xfers/common/navigation.dart';
import 'package:movie_xfers/common/styles.dart';
import 'package:movie_xfers/models/models.dart';
import 'package:movie_xfers/ui/pages/pages.dart';

class CardMovie extends StatelessWidget {

  final MovieResult movie;

  CardMovie(this.movie);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigation.moveWithData(DetailPage.routeName, movie);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: FadeInImage(
                  image: NetworkImage(
                    "http://image.tmdb.org/t/p/w92${movie.posterPath}"),
                  placeholder: AssetImage(
                    "assets/city3.png"),
                  imageErrorBuilder:
                      (context, error, stackTrace) {
                    return Image.asset(
                        'assets/city3.png',
                        fit: BoxFit.cover);
                  },
                  fit: BoxFit.cover,
                ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.grey, offset: Offset(0, 0), blurRadius: 5)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              movie.title,
              style: secondaryReguler.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              movie.releaseDate,
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}