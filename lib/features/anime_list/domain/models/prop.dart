import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/from.dart';

part 'prop.freezed.dart';
part 'prop.g.dart';

@freezed
class Prop with _$Prop {
  const factory Prop({
    @JsonKey(name: "from") From? from,
    @JsonKey(name: "to") From? to,
  }) = _Prop;

  factory Prop.fromJson(Map<String, dynamic> json) => _$PropFromJson(json);
}
