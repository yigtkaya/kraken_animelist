import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';
part 'image.g.dart';

@freezed
class Image with _$Image {
  const factory Image({
    @JsonKey(name: "image_url") String? imageUrl,
    @JsonKey(name: "small_image_url") String? smallImageUrl,
    @JsonKey(name: "large_image_url") String? largeImageUrl,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
