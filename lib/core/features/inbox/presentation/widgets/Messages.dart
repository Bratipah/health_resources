import 'package:flutter/material.dart';
import 'customMessage.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[900],
        shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
        onPressed: () {},
        child: Icon(
          Icons.add_comment_sharp,
          color: Colors.white,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(5),
        children: [
          CustomMessage(),
          Divider(),
          CustomMessage(),
          Divider(),
        ],
      ),
    );
  }
}
