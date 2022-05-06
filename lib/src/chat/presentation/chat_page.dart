import 'package:flutter/material.dart';
import 'package:grpc_p2p_client_and_server_app/src/chat/datasources/chat_api.dart';
import 'package:grpc_p2p_client_and_server_app/src/core/chat_proto_gen/chat.pb.dart';
import 'package:grpc_p2p_client_and_server_app/src/core/constants/server_constants.dart';

class ChatPage extends StatelessWidget {
  final String address;
  final User user;
  const ChatPage({Key? key, required this.address, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ChatView(
      chatAPI: ChatAPI(
        user: user,
        address: address,
        port: kServerPort,
      ),
    );
  }
}

class _ChatView extends StatefulWidget {
  final ChatAPI chatAPI;
  const _ChatView({Key? key, required this.chatAPI}) : super(key: key);

  @override
  State<_ChatView> createState() => __ChatViewState();
}

class __ChatViewState extends State<_ChatView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [],
      ),
    );
  }
}
