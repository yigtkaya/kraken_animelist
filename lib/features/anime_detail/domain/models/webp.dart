import 'package:freezed_annotation/freezed_annotation.dart';

part 'webp.freezed.dart';
part 'webp.g.dart';

@freezed
class Webp with _$Webp {
  const factory Webp({
    @JsonKey(name: "image_url") String? imageUrl,
    @JsonKey(name: "small_image_url") String? smallImageUrl,
  }) = _Webp;

  factory Webp.fromJson(Map<String, dynamic> json) => _$WebpFromJson(json);
}
