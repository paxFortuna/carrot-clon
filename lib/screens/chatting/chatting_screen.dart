import 'package:carot_clon/components/appbar_preffered_size.dart';
import 'package:carot_clon/models/chat_message.dart';
import 'package:flutter/material.dart';

import 'components/chat_container.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('채팅'),
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: List.generate(
          chatMessageList.length,
              (index) => ChatContainer(chatMessage: chatMessageList[index]),
        ),
      ),
    );
  }
}