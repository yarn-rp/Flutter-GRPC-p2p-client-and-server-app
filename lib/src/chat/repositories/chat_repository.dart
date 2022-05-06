import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:grpc_p2p_client_and_server_app/src/core/chat_proto_gen/chat.pbgrpc.dart';
import 'package:grpc_p2p_client_and_server_app/src/core/error/failures.dart';
import 'package:grpc_p2p_client_and_server_app/src/core/result/result.dart';

class ChatRepository {
  final String userAddress;
  late final StreamSubscription<Message> chatSubscription;

  ChatRepository(
    this.userAddress,
  );

  Future<Result<Unit>> sendMessage(String message) async {
    try {
      throw UnimplementedError();
    } catch (e) {
      return left(UnexpectedFailure(message: e.toString()));
    }
  }
}
