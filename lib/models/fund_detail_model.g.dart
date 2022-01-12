// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fund_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FundDetails _$FundDetailsFromJson(Map<String, dynamic> json) => FundDetails(
      Meta.fromJson(json['meta'] as Map<String, dynamic>),
      (json['data'] as List<dynamic>)
          .map((e) => Dates.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FundDetailsToJson(FundDetails instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };
