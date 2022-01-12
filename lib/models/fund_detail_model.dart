import 'package:json_annotation/json_annotation.dart';

import 'dates_model.dart';
import 'meta_model.dart';

part 'fund_detail_model.g.dart';

@JsonSerializable()
class FundDetails {
  final Meta meta;
  final List<Dates> data;

  FundDetails(this.meta, this.data);

  factory FundDetails.fromJson(Map<String, dynamic>parsedJson) => _$FundDetailsFromJson(parsedJson);
  Map<String, dynamic> toJson() => _$FundDetailsToJson(this);
}