import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:strategic/network/api_constant.dart';
import 'package:strategic/network/movie_data_agent.dart';

class DioMovieDataAgentImpl extends MovieDataAgent {
  @override
  void getNowPlayingMovies(int page) {
    Map<String,String>?  queryParameters ={
    paramApiKey : apiKey,
    paramLanguage : languageEnUs,
    paramPage : page.toString(),
    };
    Dio().get("$baseUrlDio$endPointGetPlaying",queryParameters: queryParameters).then((value) => {
      debugPrint("Now Playing Movies========> ${value.toString()}")
    }).catchError((error){
      debugPrint("Now Playing Movies========> ${error.toString()}");
    });
  }
}