import 'package:json_annotation/json_annotation.dart';
part 'city_vos.g.dart';

@JsonSerializable()
class CityVo{

  @JsonKey(name: "adult")
  bool? adult;

  @JsonKey(name: "backdrop_path")
  String? backDropPath;

  @JsonKey(name: "genre_ids")
  List<int>? genreIds;

  @JsonKey(name: "id")
  int? id;

  @JsonKey(name: "original_language")
  String? originalLanguage;

  @JsonKey(name: "original_title")
  String? originalTitle;

  @JsonKey(name: "overview")
  String? originalOverView;

  @JsonKey(name: "popularity")
  double? popularity;

  @JsonKey(name: "poster_path")
  String? posterPath;

  @JsonKey(name: "release_date")
  String? releaseDate;

  @JsonKey(name: "title")
  String? title;

  @JsonKey(name: "video")
  bool? video;

  @JsonKey(name: "vote_average")
  double? voteAverage;

  @JsonKey(name: "vote_count")
  int? voteCount;

  CityVo({
    this.adult,
    this.backDropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.originalOverView,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount});
                             //key , value
  factory CityVo.fromJson(Map<String,dynamic> data) => _$CityVoFromJson(data);
  Map<String, dynamic> toJson()=> _$CityVoToJson(this);

  @override
  String toString() {
    return 'CityVo{adult: $adult, backDropPath: $backDropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, originalOverView: $originalOverView, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount}';
  } //

}

