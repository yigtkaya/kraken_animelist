import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/images.dart';

part 'trailer.freezed.dart';
part 'trailer.g.dart';

@freezed
class Trailer with _$Trailer {
  const factory Trailer({
    @JsonKey(name: "youtube_id") String? youtubeId,
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "embed_url") String? embedUrl,
    @JsonKey(name: "images") Images? images,
  }) = _Trailer;

  factory Trailer.fromJson(Map<String, dynamic> json) => _$TrailerFromJson(json);
}
