part of 'services.dart';

class MovieServices {
  static Future<ApiReturnValue<MovieResponse>> getMovies(int page, {http.Client client}) async{
    
    client ??= http.Client();

    String url = baseUrl+'query=superman&page='+page.toString();

    var response = await client.get(url);
    if(response.statusCode != 200){
      return ApiReturnValue(message: 'Try Again');
    }else{
      return ApiReturnValue(value: MovieResponse.fromJson(json.decode(response.body)));
    }
  }
}