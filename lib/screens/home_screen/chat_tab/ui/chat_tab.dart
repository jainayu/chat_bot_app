import 'package:chat_bot_app/screens/home_screen/chat_tab/chat_bubble.dart';
import 'package:flutter/material.dart';

class ChatTab extends StatefulWidget {
  @override
  _ChatTabState createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Hero(
              tag: 'animation',
              child: SizedBox(
                height: 50.0,
                width: 50.0,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.deepPurple,
                  valueColor: new AlwaysStoppedAnimation<Color>(
                      Colors.deepPurpleAccent),
                  strokeWidth: 5.0,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ChatBubble(
              text: 'Hello, how are you?',
              isMe: false,
            ),
          ],
        ),
      ),
    );
  }
}
