import 'package:json_annotation/json_annotation.dart';

part 'fund_model.g.dart';

@JsonSerializable()
class FundScheme {
  final int schemeCode;
  final String schemeName;

  FundScheme(this.schemeCode, this.schemeName);

  factory FundScheme.fromJson(Map<String, dynamic> parsedJson) => _$FundSchemeFromJson(parsedJson);
  Map<String, dynamic> toJson() => _$FundSchemeToJson(this);
}