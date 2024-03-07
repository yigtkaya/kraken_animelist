import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken_animelist/features/anime_detail/domain/models/character_images.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  const factory Character({
    @JsonKey(name: "mal_id") int? malId,
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "images") CharacterImages? images,
    @JsonKey(name: "name") String? name,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);
}
