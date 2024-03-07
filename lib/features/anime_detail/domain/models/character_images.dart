import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken_animelist/features/anime_detail/domain/models/jpg.dart';
import 'package:kraken_animelist/features/anime_detail/domain/models/webp.dart';

part 'character_images.freezed.dart';
part 'character_images.g.dart';

@freezed
class CharacterImages with _$CharacterImages {
  const factory CharacterImages({
    @JsonKey(name: "jpg") Jpg? jpg,
    @JsonKey(name: "webp") Webp? webp,
  }) = _CharacterImages;

  factory CharacterImages.fromJson(Map<String, dynamic> json) => _$CharacterImagesFromJson(json);
}
