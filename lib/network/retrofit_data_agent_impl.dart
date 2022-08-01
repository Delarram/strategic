
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:strategic/network/api_constant.dart';
import 'package:strategic/network/movie_data_agent.dart';
import 'package:strategic/network/the_movie_api.dart';

class RetrofitDataAgentImpl extends MovieDataAgent{
   late TheMovieApi mApi;

  RetrofitDataAgentImpl(){
    final dio = Dio();
     mApi = TheMovieApi(dio);
  }

  @override
  void getNowPlayingMovies(int page) {

    mApi.
    getNowPlayingMovies(apiKey,languageEnUs,page.toString())
        .then((response) => {
      response.results!.forEach((movie) => debugPrint(movie.toString()))
    }).catchError((error){
      debugPrint("Now Playing Movies========> ${error.toString()}");
    });
  }

}