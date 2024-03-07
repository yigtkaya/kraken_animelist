import 'package:freezed_annotation/freezed_annotation.dart';

part 'demographic.freezed.dart';
part 'demographic.g.dart';

@freezed
class Demographic with _$Demographic {
  const factory Demographic({
    @JsonKey(name: "mal_id") int? malId,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "url") String? url,
  }) = _Demographic;

  factory Demographic.fromJson(Map<String, dynamic> json) => _$DemographicFromJson(json);
}
