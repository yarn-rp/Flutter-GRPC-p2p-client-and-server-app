import 'dart:developer';

import 'package:dart_ipify/dart_ipify.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc_p2p_client_and_server_app/src/chat/datasources/chat_api.dart';
import 'package:grpc_p2p_client_and_server_app/src/chat/datasources/chat_server.dart';
import 'package:grpc_p2p_client_and_server_app/src/chat/presentation/chat_page.dart';
import 'package:grpc_p2p_client_and_server_app/src/core/chat_proto_gen/chat.pb.dart';
import 'package:grpc_p2p_client_and_server_app/src/core/constants/server_constants.dart';

void main() async {
  final _connectionAddress = ConnectionAddress()
    ..address = await Ipify.ipv4()
    ..port = kServerPort;

  final _user = User()
    ..name = 'User1'
    ..address = _connectionAddress;

  final server = Server([
    ChatService(user: _user),
  ]);

  await server.serve(address: _connectionAddress.address, port: 48745);
  log('Server listening on port ${server.port}...');

  runApp(MyApp(
    user: _user,
  ));
}

class MyApp extends StatelessWidget {
  final User user;

  const MyApp({Key? key, required this.user}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        user: user,
        title: 'Flutter Demo Home Page',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final User user;
  const MyHomePage({Key? key, required this.title, required this.user})
      : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? address;
  void _incrementCounter() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ChatPage(
            address: address!,
            user: widget.user,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('User at ${widget.user.address.address}'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: TextField(
          onChanged: (v) {
            setState(() {
              address = v;
            });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        label: const Text('Conectar'),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
