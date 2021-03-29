part of 'pages.dart';

class SplashPage extends StatefulWidget {

  static const routeName = '/splash_page';

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), (){
      Navigation.clearMove(MainPage.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaryColor,
        child: Center(
          child: Text("MOVIE",
            style: whiteReguler.copyWith(fontSize: 30),
          ),
        ),
      ),
    );
  }
}