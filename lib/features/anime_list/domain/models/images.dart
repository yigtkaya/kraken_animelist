import 'package:freezed_annotation/freezed_annotation.dart';

part 'images.freezed.dart';
part 'images.g.dart';

@freezed
class Images with _$Images {
  const factory Images({
    @JsonKey(name: "image_url") String? imageUrl,
    @JsonKey(name: "small_image_url") String? smallImageUrl,
    @JsonKey(name: "medium_image_url") String? mediumImageUrl,
    @JsonKey(name: "large_image_url") String? largeImageUrl,
    @JsonKey(name: "maximum_image_url") String? maximumImageUrl,
  }) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}
