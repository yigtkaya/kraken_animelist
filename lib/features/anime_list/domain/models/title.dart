import 'package:freezed_annotation/freezed_annotation.dart';

part 'title.freezed.dart';
part 'title.g.dart';

@freezed
class Title with _$Title {
  const factory Title({
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "title") String? title,
  }) = _Title;

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
}
