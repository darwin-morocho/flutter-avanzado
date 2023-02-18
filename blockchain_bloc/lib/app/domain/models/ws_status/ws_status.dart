import 'package:freezed_annotation/freezed_annotation.dart';

part 'ws_status.freezed.dart';

@freezed
class WsStatus with _$WsStatus {
  const factory WsStatus.connecting() = _Connecting;
  const factory WsStatus.connected() = _Connected;
  const factory WsStatus.failed() = _WsStatusFailed;
}
