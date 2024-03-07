import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken_animelist/features/anime_detail/domain/models/person.dart';

part 'voice_actor.freezed.dart';
part 'voice_actor.g.dart';

@freezed
class VoiceActor with _$VoiceActor {
  const factory VoiceActor({
    @JsonKey(name: "person") Person? person,
    @JsonKey(name: "language") String? language,
  }) = _VoiceActor;

  factory VoiceActor.fromJson(Map<String, dynamic> json) => _$VoiceActorFromJson(json);
}
