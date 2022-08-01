import 'package:strategic/data/city_vos.dart';

abstract class MovieModel{
  Future<List<CityVo>?> getNowPlayingMovies(int page);
}