import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

const String movieAPIUrl = 'https://api.themoviedb.org/3/';
const trendingUrl ='trending/movie/day?language=en-US';
const nowPlayingUrl ='movie/now_playing';
const topRatedUrl ='movie/top_rated';
const popularUrl ='movie/popular';

const movieDetailsUrl ='movie/';
const genreUrl ='genre/movie/list';
const searchMovieUrl ='search/movie';
const configurationUrl ='configuration';
const discoverMovieUrl = 'discover/movie';

const pageParameterName ='page';
const movieIdParameterName = 'movie_id';
const apiKeyParameterName = 'api_key';
const videosParameter = 'videos';
const creditsParameter = 'credits';
const queryParameterName = 'query';
const genreParameterName = 'with_genre';


class MovieAPIService {
  late final Dio dio;
  final showDebugInfo = true;
  final String? apiKey = dotenv.env['TMDB_KEY'];

  MovieAPIService(){
    configureDio();
  }


  void configureDio() {
    final options = BaseOptions(baseUrl: movieAPIUrl,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 3)
        ,headers: {
          'Authorization': 'Bearer $apiKey', // Use your loaded API key
          'Content-Type': 'application/json',
        }  );
    dio = Dio(options);
    //TODO Add Interceptors

    dio.interceptors.add(InterceptorsWrapper(
        onRequest: (RequestOptions options,
            RequestInterceptorHandler handler) {
          final queryParameters = options.queryParameters;
          queryParameters[apiKeyParameterName] = apiKey;
          return handler.next(options);
    },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          // Do something with response data.
          // If you want to reject the request with a error message,
          // you can reject a `DioException` object using `handler.reject(dioError)`
          return handler.next(response);
        },
        onError: (DioException error, ErrorInterceptorHandler handler) {
          return handler.next(error);
        }
    )
    );
    if (showDebugInfo) {
      dio.interceptors.add(LogInterceptor(
        responseBody: true, // Whether to log ResponseBody
        error: true, // Whether to log errors
        request: true, // Whether to log  request
        requestHeader: true, // Whether to log requestHeaders
        responseHeader: true, // Whether to log responseHeaders
      ));
    }
  }
  Future<Response> getTrending([int page = 1]) async {
    final response = await dio.get(trendingUrl,
        queryParameters: {pageParameterName: page});
    return response;
  }
  Future<Response> getNowPlaying([int page = 1]) async {
    final response = await dio.get(nowPlayingUrl,
        queryParameters: {pageParameterName: page});
    return response;
  }
  Future<Response> getTopRated([int page = 1]) async {
    final response = await dio.get(topRatedUrl,
        queryParameters: {pageParameterName: page});
    return response;
  }
  Future<Response> getPopular([int page = 1]) async {
    final response = await dio.get(popularUrl,
        queryParameters: {pageParameterName: page});
    return response;
  }
  Future<Response> getMovieDetails(int movieId) async {
    final response = await dio.get('$movieDetailsUrl/$movieId',);
    return response;
  }
  Future<Response> getMovieDetailsWithParams(int movieId, {List<String> addToResponse = const []}) async {
    if (addToResponse.isNotEmpty){
      final response = await dio.get('$movieDetailsUrl/$movieId',
          queryParameters: {
            'append_to_response': addToResponse.join(',')
          });
      return response;
    }
    final response = await dio.get('$movieDetailsUrl/$movieId',);
    return response;
  }
  Future<Response> getMovieVideos(int movieId) async{
  return dio.get('$movieDetailsUrl/$movieId/$videosParameter');
  }
  Future<Response> getGenres() async{
  return dio.get(genreUrl);
  }
  Future<Response> searchMoviesByGenres(String genre, [int page = 1]) async{
  return dio.get(searchMovieUrl, queryParameters: {genreParameterName: genre, pageParameterName: page});
  }
  Future<Response> getMovieConfiguration() async{
  return dio.get(configurationUrl);
  }
  Future<Response> searchMovies(String query, [int page = 1]) async {
    return dio.get(searchMovieUrl, queryParameters: {queryParameterName: query});
  }
}