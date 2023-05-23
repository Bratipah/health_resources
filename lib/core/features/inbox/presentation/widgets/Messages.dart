import 'package:flutter/material.dart';

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
        child: Icon(Icons.add_comment_sharp,color: Colors.white,),
      ),
      body: ListView(padding: EdgeInsets.all(5),
        children: [
          ListTile(
            leading: CircleAvatar(radius: 30,foregroundImage: AssetImage("assets/christin-hume-Hcfwew744z4-unsplash.jpg"),backgroundColor: Colors.blue[900],),
            trailing: Text("Mon, 15 May 2023", style: TextStyle(fontWeight: FontWeight.w200, fontSize: 13),),
            title: Text("Annete Mwashi", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
            subtitle: Text("hello",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(radius: 30,backgroundColor: Colors.blue[900]),
            trailing: Text("Mon, 15 May 2023", style: TextStyle(fontWeight: FontWeight.w200, fontSize: 13),),
            title: Text("Annete Mwashi", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
            subtitle: Text("hello",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),),
          ),
          Divider(),
        ],
      ),
    );
  }
}
