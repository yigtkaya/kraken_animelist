import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken_animelist/features/anime_detail/domain/models/character.dart';
import 'package:kraken_animelist/features/anime_detail/domain/models/voice_actor.dart';

part 'anime_detail.freezed.dart';
part 'anime_detail.g.dart';

@freezed
class AnimeDetail with _$AnimeDetail {
  const factory AnimeDetail({
    @JsonKey(name: "character") Character? character,
    @JsonKey(name: "role") String? role,
    @JsonKey(name: "favorites") int? favorites,
    @JsonKey(name: "voice_actors") List<VoiceActor>? voiceActors,
  }) = _AnimeDetail;

  factory AnimeDetail.fromJson(Map<String, dynamic> json) => _$AnimeDetailFromJson(json);
}
