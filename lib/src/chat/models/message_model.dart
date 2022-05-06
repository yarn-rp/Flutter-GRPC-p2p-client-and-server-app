import 'package:grpc_p2p_client_and_server_app/src/chat/models/user_model.dart';
import 'package:grpc_p2p_client_and_server_app/src/core/chat_proto_gen/chat.pb.dart';

class MessageModel {
  final UserModel user;
  final String message;

  MessageModel(this.user, this.message);

  factory MessageModel.fromProto(Message m) => MessageModel(
        UserModel.fromProto(m.user),
        m.message,
      );

  Message get toProto => Message(
        user: user.toProto,
        message: message,
      );
}
