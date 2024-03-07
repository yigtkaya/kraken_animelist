import 'package:freezed_annotation/freezed_annotation.dart';

part 'jpg.freezed.dart';
part 'jpg.g.dart';

@freezed
class Jpg with _$Jpg {
  const factory Jpg({
    @JsonKey(name: "image_url") String? imageUrl,
  }) = _Jpg;

  factory Jpg.fromJson(Map<String, dynamic> json) => _$JpgFromJson(json);
}
