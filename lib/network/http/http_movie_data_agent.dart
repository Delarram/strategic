// import 'package:flutter/cupertino.dart';
// import 'package:http/http.dart' as http;
// import 'package:strategic/network/api_constant.dart';
// import 'package:strategic/network/movie_data_agent.dart';
//
// class HttpMovieDataAgentImpl extends MovieDataAgent{//abstract class ko extends lote tr
//   @override
//   void getNowPlayingMovies(int page) {
//   Map<String,String>?  queryParameters = {
//     paramApiKey : apiKey,
//     paramLanguage : languageEnUs,
//     paramPage : page.toString()
//   };
//
//   var url= Uri.https(baseUrlHttp,endPointGetNowPlaying,queryParameters);
//
//   http.get(url).then((value) => {
//     debugPrint("Now Playing Movies========> ${value.body.toString()}")
//   }).catchError((error){
//     debugPrint("Now Playing Movies========> ${error.toString()}");
//   });
//   }
//
// }