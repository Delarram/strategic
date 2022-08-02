
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:strategic/network/api_constant.dart';
import 'package:strategic/network/responses/get_now_playing_response.dart';

part 'the_movie_api.g.dart';


@RestApi(baseUrl: baseUrlDio)
abstract class TheMovieApi{
  factory TheMovieApi(Dio dio, {String baseUrl})= _TheMovieApi;

   @GET(endPointGetNowPlaying)//will be dynamic type so we have to give response datatype in future
   Future<GetNowPlayingResponse> getNowPlayingMovies(
       @Query(paramApiKey) String apiKey,
       @Query(paramLanguage) String language,
       @Query(paramPage) String page,
       );
}
//necessary set up this is
//we use constructor of generate code
