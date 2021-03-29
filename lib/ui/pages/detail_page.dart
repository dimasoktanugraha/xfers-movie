part of 'pages.dart';

class DetailPage extends StatelessWidget {

  static const routeName = '/detail_page';

  final MovieResult movie;

  const DetailPage({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title,
         maxLines: 1,
        )
      ),
      body: _detailBody(context),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(movie.title,
          maxLines: 1,
        ),
        transitionBetweenRoutes: false,
      ),
      child: _detailBody(context),
    );
  }

  Widget _detailBody(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width - 150,
              height: 350,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  "http://image.tmdb.org/t/p/w500${movie.posterPath}",
                  fit: BoxFit.cover,),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.grey, offset: Offset(0, 0), blurRadius: 5)
                ],
              ),
            ),
            Text(
              movie.title,
              style: secondaryReguler.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: darkGrayTextColor,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 24.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      movie.voteAverage.toString(),
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.date_range,
                    color: Colors.blue,
                    size: 24.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      movie.releaseDate.toString(),
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'OVERVIEW',
              style: blackReguler.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                movie.overview,
                style: blackReguler.copyWith(fontSize: 16),
                textAlign: TextAlign.justify
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        )
      ],
    );
  }
}