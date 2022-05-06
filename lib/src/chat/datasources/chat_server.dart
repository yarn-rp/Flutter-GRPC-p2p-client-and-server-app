import 'dart:developer';

import 'package:grpc/src/server/call.dart';
import 'package:grpc_p2p_client_and_server_app/src/core/chat_proto_gen/chat.pbgrpc.dart';

class ChatService extends ChatServiceBase {
  final User user;

  ChatService({
    required this.user,
  });
  @override
  Stream<StreamResponse> stream(
      ServiceCall call, StreamRequest request) async* {
    print(
        'Got a new message from ${request.message.user.address} with text: ${request.message.message}');
    yield StreamResponse(
      timestamp: 1,
      clientMessage: Message(
        message: 'Received message from ${request.message.user.address}',
        user: user,
      ),
    );
  }
}
