import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kraken_animelist/features/anime_list/domain/models/items.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    @JsonKey(name: "last_visible_page") int? lastVisiblePage,
    @JsonKey(name: "has_next_page") bool? hasNextPage,
    @JsonKey(name: "current_page") int? currentPage,
    @JsonKey(name: "items") Items? items,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);
}
