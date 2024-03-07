import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/prop.dart';

part 'aired.freezed.dart';
part 'aired.g.dart';

@freezed
class Aired with _$Aired {
  const factory Aired({
    @JsonKey(name: "from") DateTime? from,
    @JsonKey(name: "to") DateTime? to,
    @JsonKey(name: "prop") Prop? prop,
    @JsonKey(name: "string") String? string,
  }) = _Aired;

  factory Aired.fromJson(Map<String, dynamic> json) => _$AiredFromJson(json);
}
