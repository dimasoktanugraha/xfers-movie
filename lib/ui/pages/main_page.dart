part of 'pages.dart';

class MainPage extends StatefulWidget {
  static const routeName = '/main_page';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _scrollController = ScrollController();
  MovieCubit _movieCubit;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _movieCubit = context.read<MovieCubit>();
    _movieCubit.getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Movie')),
      body: _buildList(context),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Movie'),
        transitionBetweenRoutes: false,
      ),
      child: _buildList(context),
    );
  }

  Widget _buildList(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return Container(
      child: BlocBuilder<MovieCubit, MovieState>(
          builder: (context, state) {
            if (state is MovieLoaded) {
              return 
              GridView.builder(
                controller: _scrollController,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: state.isMaxLoad ? state.movie.length : state.movie.length + 1,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:  2,
                  childAspectRatio: (itemWidth / itemHeight),
                ), 
                itemBuilder: (BuildContext context, int index){
                  return index >= state.movie.length ? 
                      BottomLoader()
                    :
                      CardMovie(state.movie[index])
                    ;
                });
            } else if(state is MovieLoadingFailed){
              return Center(child: Text(state.message));
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      print("bottom");
      _movieCubit.getMovies();
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
