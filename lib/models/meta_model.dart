import 'package:json_annotation/json_annotation.dart';

part 'meta_model.g.dart';

@JsonSerializable()
class Meta {
  @JsonKey(name: "fund_house")
  final String fundHouse;

  @JsonKey(name: "scheme_type")
  final String schemeType;

  @JsonKey(name: "scheme_category")
  final String schemeCategory;
  
  @JsonKey(name: "scheme_code")
  final int schemeCode;

  @JsonKey(name: "scheme_name")
  final String schemeName;

  Meta(this.fundHouse, this.schemeType, this.schemeCategory, this.schemeCode, this.schemeName);
  factory Meta.fromJson(Map<String, dynamic>parsedJson) => _$MetaFromJson(parsedJson);
  Map<String, dynamic> toJson() => _$MetaToJson(this);

}