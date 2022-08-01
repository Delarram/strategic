// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_now_playing_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetNowPlayingResponse _$GetNowPlayingResponseFromJson(
        Map<String, dynamic> json) =>
    GetNowPlayingResponse(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => CityVo.fromJson(e as Map<String, dynamic>))
          .toList(),
      dates: json['dates'] == null
          ? null
          : DateVo.fromJson(json['dates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetNowPlayingResponseToJson(
        GetNowPlayingResponse instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'page': instance.page,
      'results': instance.results,
    };
