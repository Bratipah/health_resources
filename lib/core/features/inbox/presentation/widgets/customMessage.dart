import 'package:flutter/material.dart';
import 'MessageBox.dart';

class CustomMessage extends StatelessWidget {
  const CustomMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MessageBox()));
      },
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage:
              AssetImage("assets/christin-hume-Hcfwew744z4-unsplash.jpg"),
          // backgroundImage: NetworkImage(widget.snap['profileImage']),
          backgroundColor: Colors.blue[900],
        ),
        title: Text(
          "Annete Mwashi",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        subtitle: Text(
          "hello",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
        ),
        trailing: Text(
          "Mon, 15 May 2023",
          style: TextStyle(fontWeight: FontWeight.w200, fontSize: 13),
        ),
      ),
    );
  }
}
