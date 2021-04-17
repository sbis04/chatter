import 'package:flutter/material.dart';
import 'package:flutterista/screens/channel_page.dart';
import 'package:flutterista/screens/initial_screen.dart';
import 'package:flutterista/utils/stream_client.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: StreamClientConnect.setup(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            builder: (context, widget) => StreamChat(
              streamChatThemeData: StreamChatThemeData(
                colorTheme: ColorTheme.light(),
              ),
              child: widget,
              client: StreamClientConnect.client,
            ),
            debugShowCheckedModeBanner: false,
            home: StreamChannel(
              channel: StreamClientConnect.channel,
              child: ChannelPage(),
            ),
          );
        }

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: InitialScreen(),
        );
      },
    );
  }
}
