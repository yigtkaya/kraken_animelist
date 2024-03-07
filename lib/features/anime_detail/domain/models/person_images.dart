import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken_animelist/features/anime_detail/domain/models/jpg.dart';

part 'person_images.freezed.dart';
part 'person_images.g.dart';

@freezed
class PersonImages with _$PersonImages {
  const factory PersonImages({
    @JsonKey(name: "jpg") Jpg? jpg,
  }) = _PersonImages;

  factory PersonImages.fromJson(Map<String, dynamic> json) => _$PersonImagesFromJson(json);
}
