import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken_animelist/features/anime_detail/domain/models/person_images.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
class Person with _$Person {
  const factory Person({
    @JsonKey(name: "mal_id") int? malId,
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "images") PersonImages? images,
    @JsonKey(name: "name") String? name,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
