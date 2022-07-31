import 'package:flutter/material.dart';
import 'package:strategic/network/http_movie_data_agent.dart';
import 'package:strategic/view/pages/home_screen.dart';

void main() {
  HttpMovieDataAgentImpl().getNowPlayingMovies(1);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavigation(),
    );
  }
}
