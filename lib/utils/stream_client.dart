import 'package:stream_chat_flutter/stream_chat_flutter.dart';

import '../secrets.dart';

class StreamClientConnect {
  static final client = StreamChatClient(
    Secrets.steamKey,
    logLevel: Level.INFO,
  );

  static final channel = client.channel('messaging', id: 'chatter')..watch();

  static Future<void> setup() async {
    await Future.delayed(
      Duration(seconds: 2),
    );
    await client.connectUser(
      User(
        id: 'souvik',
        extraData: {
          'image': Secrets.imageURL,
        },
      ),
      Secrets.jwtToken,
    );
  }
}
