import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/share/message_filed_box.dart';

class ChatScrenn extends StatelessWidget {
  const ChatScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
             // backgroundImage: NetworkImage(
               //   ""),
            )),
        title: const Text("Chat text"),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(child: ListView.builder(itemBuilder: (context, index) {
                  return (index % 2==0)
                  ? const HerMessageBubble()
                  :const MyMessageBubble();
                })),
                ///caja de text
                const MessageFieldBox(),
              ],
            )));
  }
}
