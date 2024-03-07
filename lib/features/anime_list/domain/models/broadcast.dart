import 'package:freezed_annotation/freezed_annotation.dart';

part 'broadcast.freezed.dart';
part 'broadcast.g.dart';

@freezed
class Broadcast with _$Broadcast {
  const factory Broadcast({
    @JsonKey(name: "day") String? day,
    @JsonKey(name: "time") String? time,
    @JsonKey(name: "timezone") String? timezone,
    @JsonKey(name: "string") String? string,
  }) = _Broadcast;

  factory Broadcast.fromJson(Map<String, dynamic> json) => _$BroadcastFromJson(json);
}
