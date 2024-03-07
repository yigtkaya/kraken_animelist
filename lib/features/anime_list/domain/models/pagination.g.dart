// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationImpl _$$PaginationImplFromJson(Map<String, dynamic> json) => _$PaginationImpl(
      lastVisiblePage: json['last_visible_page'] as int?,
      hasNextPage: json['has_next_page'] as bool?,
      currentPage: json['current_page'] as int?,
      items: json['items'] == null ? null : Items.fromJson(json['items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaginationImplToJson(_$PaginationImpl instance) => <String, dynamic>{
      'last_visible_page': instance.lastVisiblePage,
      'has_next_page': instance.hasNextPage,
      'current_page': instance.currentPage,
      'items': instance.items,
    };
