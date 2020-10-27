import 'package:chat_bot_app/screens/home_screen/journal_tab/ui/add_new_entry_widget.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class JournalTab extends StatefulWidget {
  @override
  _JournalTabState createState() => _JournalTabState();
}

class _JournalTabState extends State<JournalTab> {
  // ImageProvider header = AssetImage('images/journal_header.jpg');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  height: 250,
                  child: Stack(
                    children: [
                      Center(
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.white,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.deepPurpleAccent,
                          ),
                        ),
                      ),
                      Center(
                        child: FadeInImage(
                          fit: BoxFit.cover,
                          placeholder: MemoryImage(kTransparentImage),
                          image: AssetImage('images/journal_header.jpg'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                AddNewEntryWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
