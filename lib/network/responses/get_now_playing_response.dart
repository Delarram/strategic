
import 'package:json_annotation/json_annotation.dart';
import 'package:strategic/data/city_vos.dart';
import 'package:strategic/data/date_vo.dart';

part 'get_now_playing_response.g.dart';

@JsonSerializable()
class GetNowPlayingResponse{

  @JsonKey(name: "dates")
  DateVo? dates;

  @JsonKey(name: "page")
  int? page;

  @JsonKey(name: "results")
  List<CityVo>? results;

  GetNowPlayingResponse({this.page,this.results,this.dates});

  factory GetNowPlayingResponse.fromJson(Map<String,dynamic> data) => _$GetNowPlayingResponseFromJson(data);
  Map<String, dynamic> toJson()=> _$GetNowPlayingResponseToJson(this);
}