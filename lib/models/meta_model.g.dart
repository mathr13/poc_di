// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      json['fund_house'] as String,
      json['scheme_type'] as String,
      json['scheme_category'] as String,
      json['scheme_code'] as int,
      json['scheme_name'] as String,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'fund_house': instance.fundHouse,
      'scheme_type': instance.schemeType,
      'scheme_category': instance.schemeCategory,
      'scheme_code': instance.schemeCode,
      'scheme_name': instance.schemeName,
    };
