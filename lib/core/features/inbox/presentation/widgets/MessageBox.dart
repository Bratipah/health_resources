import 'package:flutter/material.dart';

class MessageBox extends StatefulWidget {
  const MessageBox({Key? key}) : super(key: key);

  @override
  State<MessageBox> createState() => _MessageBoxState();
}

class _MessageBoxState extends State<MessageBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leadingWidth: 70,
        leading:InkWell(
          onTap: (){},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back_sharp,
                size: 24,
              ),
              CircleAvatar(
                radius: 20,
                child: Icon(Icons.person,color: Colors.white,size: 30,),
                backgroundColor: Colors.blueGrey,
              )
            ],
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Annete Mwashi", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            Text("+254792964487", style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300),),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp)),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image:DecorationImage(
              image: AssetImage("assets/whatsapp-background-cool-wallpaper-wallpaper-backgrounds-whatsapp-background.jpeg"),fit: BoxFit.cover,
          )
        ),
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width -45,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.multiline,
                        maxLines: 3,
                        minLines: 1,
                        decoration: InputDecoration(
                          hintText: "Type a Message",
                          hintStyle: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey),
                          prefixIcon: IconButton(icon: Icon(Icons.emoji_emotions,color: Colors.blue[900],),onPressed: (){},),
                          contentPadding: EdgeInsets.all(5),
                        ),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.blue,
                    child: IconButton(
                      icon: Icon(Icons.send,color: Colors.white,size: 23,),
                      onPressed: (){},
                    ),
                  )
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
