import 'package:grpc_p2p_client_and_server_app/src/core/chat_proto_gen/chat.pbgrpc.dart';

class ConnectionAddressModel {
  final String address;
  final int port;

  ConnectionAddressModel(this.address, this.port);
  factory ConnectionAddressModel.fromProto(ConnectionAddress con) =>
      ConnectionAddressModel(con.address, con.port);

  ConnectionAddress get toProto =>
      ConnectionAddress(address: address, port: port);
}
