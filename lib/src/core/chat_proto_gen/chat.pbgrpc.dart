///
//  Generated code. Do not modify.
//  source: chat.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'chat.pb.dart' as $0;
export 'chat.pb.dart';

class ChatClient extends $grpc.Client {
  static final _$stream =
      $grpc.ClientMethod<$0.StreamRequest, $0.StreamResponse>(
          '/chatPackage.Chat/Stream',
          ($0.StreamRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.StreamResponse.fromBuffer(value));

  ChatClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.StreamResponse> stream($0.StreamRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$stream, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class ChatServiceBase extends $grpc.Service {
  $core.String get $name => 'chatPackage.Chat';

  ChatServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.StreamRequest, $0.StreamResponse>(
        'Stream',
        stream_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.StreamRequest.fromBuffer(value),
        ($0.StreamResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$0.StreamResponse> stream_Pre(
      $grpc.ServiceCall call, $async.Future<$0.StreamRequest> request) async* {
    yield* stream(call, await request);
  }

  $async.Stream<$0.StreamResponse> stream(
      $grpc.ServiceCall call, $0.StreamRequest request);
}
