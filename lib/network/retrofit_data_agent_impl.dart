
import 'package:dio/dio.dart';
import 'package:strategic/data/city_vos.dart';
import 'package:strategic/network/api_constant.dart';
import 'package:strategic/network/movie_data_agent.dart';
import 'package:strategic/network/oldmovieapi/the_movie_api.dart';

class RetrofitDataAgentImpl {
   late TheMovieApi mApi;

//before singleton
//   RetrofitDataAgentImpl(){
//     final dio = Dio();
//      mApi = TheMovieApi(dio);
//   }
  static final RetrofitDataAgentImpl _singleton = RetrofitDataAgentImpl._internal();

  factory RetrofitDataAgentImpl(){
   return _singleton; //single to didnt return new again and again thus we did
  }
  //after singleton
  RetrofitDataAgentImpl._internal(){
    final dio = Dio();
    mApi = TheMovieApi(dio);
  }

  @override
  //void getNowPlayingMoviews(int page){
  Future<List<CityVo>?> getNowPlayingMovies(int page) {
    return mApi.
    getNowPlayingMovies(apiKey,languageEnUs,page.toString())
        .asStream()
        .map((response) => response.results)
        .first;


    //     .then((response) => {
    //   response.results!.forEach((movie) => debugPrint(movie.toString()))
    // }).catchError((error){
    //   debugPrint("Now Playing Movies========> ${error.toString()}");
    // });
  }

}
