import 'package:grpc_p2p_client_and_server_app/src/chat/models/connection_address_model.dart';
import 'package:grpc_p2p_client_and_server_app/src/core/chat_proto_gen/chat.pbgrpc.dart';

class UserModel {
  final String name;
  final ConnectionAddressModel connectionAddress;

  UserModel(this.name, this.connectionAddress);

  factory UserModel.fromProto(User u) =>
      UserModel(u.name, ConnectionAddressModel.fromProto(u.address));

  User get toProto => User(
        name: name,
        address: connectionAddress.toProto,
      );
}
