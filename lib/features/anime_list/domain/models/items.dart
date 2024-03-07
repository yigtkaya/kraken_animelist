import 'package:freezed_annotation/freezed_annotation.dart';

part 'items.freezed.dart';
part 'items.g.dart';

@freezed
class Items with _$Items {
  const factory Items({
    @JsonKey(name: "count") int? count,
    @JsonKey(name: "total") int? total,
    @JsonKey(name: "per_page") int? perPage,
  }) = _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}
