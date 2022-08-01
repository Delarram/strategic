import 'package:strategic/data/city_vos.dart';
import 'package:strategic/data/models/movie_model.dart';
import 'package:strategic/network/movie_data_agent.dart';
import 'package:strategic/network/retrofit_data_agent_impl.dart';

class MovieModelImpl extends MovieModel {
  MovieDataAgent mDataAgent = RetrofitDataAgentImpl();

  static final MovieModelImpl _singleton = MovieModelImpl._internal();

  factory MovieModelImpl() {
    return _singleton;
  }
  //after singleton
  MovieModelImpl._internal();

  @override
  Future<List<CityVo>?> getNowPlayingMovies(int page) {
    return mDataAgent.getNowPlayingMovies(page);
  }
}
