import 'package:json_annotation/json_annotation.dart';

part 'dates_model.g.dart';

@JsonSerializable()
class Dates {
  final String date;
  final String nav;

  Dates(this.date, this.nav);

  factory Dates.fromJson(Map<String, dynamic>parsedJson) => _$DatesFromJson(parsedJson);
  Map<String, dynamic> toJson() => _$DatesToJson(this);
}