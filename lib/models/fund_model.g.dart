// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fund_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FundScheme _$FundSchemeFromJson(Map<String, dynamic> json) => FundScheme(
      json['schemeCode'] as int,
      json['schemeName'] as String,
    );

Map<String, dynamic> _$FundSchemeToJson(FundScheme instance) =>
    <String, dynamic>{
      'schemeCode': instance.schemeCode,
      'schemeName': instance.schemeName,
    };
