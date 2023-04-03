import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_clone/info.dart';
import 'package:responsive_whatsapp_clone/widgets/my_message_card.dart';
import 'package:responsive_whatsapp_clone/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          //My message -> card
          return MyMessageCard(
            date: messages[index]['time'].toString(),
            message: messages[index]['text'].toString(),
          );
        }
        return SenderMessageCard(
          date: messages[index]['time'].toString(),
          message: messages[index]['text'].toString(),
        );

        // sender message -> card
      },
      itemCount: messages.length,
    );
  }
}
