import 'package:strategic/data/city_vos.dart';

abstract class MovieDataAgent{
  Future<List<CityVo>?> getNowPlayingMovies(int page);
}