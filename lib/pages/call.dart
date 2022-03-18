import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/data.dart';
import 'package:untitled2/pages/home_page.dart';
import 'package:agora_uikit/src/layout/floating_layout.dart';

void main() {
  runApp(Call());
}

class Call extends StatefulWidget {
  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  final AgoraClient client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId: App_id,
      tempToken: Token_id,
      channelName: 'anal',
    ),
    enabledPermission: [
      Permission.camera,
      Permission.microphone,
    ],
  );

  @override
  void initState() {
    super.initState();
    initAgora();
  }

  void initAgora() async {
    await client.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Stack(
            children: [
              AgoraVideoViewer(
                client: client,
              ),
              AgoraVideoButtons(
                client: client,
              ),
              FloatingLayout(
                client: client
              )
            ],
    ),
    );
  }
}
