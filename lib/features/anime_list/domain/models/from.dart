import 'package:freezed_annotation/freezed_annotation.dart';

part 'from.freezed.dart';
part 'from.g.dart';

@freezed
class From with _$From {
  const factory From({
    @JsonKey(name: "day") int? day,
    @JsonKey(name: "month") int? month,
    @JsonKey(name: "year") int? year,
  }) = _From;

  factory From.fromJson(Map<String, dynamic> json) => _$FromFromJson(json);
}
