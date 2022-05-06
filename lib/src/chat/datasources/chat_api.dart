import 'dart:developer';
import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:grpc_p2p_client_and_server_app/src/core/chat_proto_gen/chat.pbgrpc.dart';
import 'package:grpc_p2p_client_and_server_app/src/core/constants/server_constants.dart';

class ChatAPI {
  late final ChatClient stub;
  final User user;
  ChatAPI({
    required this.user,
    String? address,
    int? port,
  }) {
    log('Stablishing connection with address: $address:$port ');
    final channel = ClientChannel(
      InternetAddress(address ?? kServerHost),
      port: port ?? kServerPort,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    stub = ChatClient(channel);
  }
  void connect() {
    stub
        .stream(
            StreamRequest(message: Message(message: 'hello_world', user: user)))
        .listen((value) {
      print('Got new message $value');
    });
  }
}
