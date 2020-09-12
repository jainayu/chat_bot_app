import 'package:chat_bot_app/screens/home_screen/journal_tab/ui/add_new_entry_widget.dart';
import 'package:flutter/material.dart';

class JournalTab extends StatefulWidget {
  @override
  _JournalTabState createState() => _JournalTabState();
}

class _JournalTabState extends State<JournalTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset('images/journal_header.jpg'),
              SizedBox(
                height: 10,
              ),
              AddNewEntryWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
