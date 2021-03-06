import 'package:json_annotation/json_annotation.dart';

part 'date_vo.g.dart';

@JsonSerializable()
class DateVo { //objects
  @JsonKey(name: "maximum")
  String? maximum;

  @JsonKey(name: "minimum")
  String? minimum;

  DateVo({this.maximum, this.minimum});

  factory DateVo.fromJson(Map<String,dynamic> data) => _$DateVoFromJson(data);
  Map<String, dynamic> toJson()=> _$DateVoToJson(this);

}
