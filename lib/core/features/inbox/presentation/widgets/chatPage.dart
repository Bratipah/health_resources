import 'package:flutter/material.dart';
import 'Messages.dart';
import 'Notifications.dart';
import 'dart:ui';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage>
    with SingleTickerProviderStateMixin {
  TabController? _controller;

  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              tooltip: 'Back',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    backgroundColor: Colors.lightBlue,
                    content: Text(
                      "Return to previous page",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    )));
              },
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              "Inbox",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
          body: Container(
            color: Colors.white,
            child: DefaultTabController(
              length: 2,
              child: Scaffold(
                body: Column(

                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TabBar(
                            controller: _controller,
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.blue[900],
                            ),
                            labelColor: Colors.white,
                            labelStyle: TextStyle(color: Colors.white),
                            unselectedLabelColor: Colors.black54,
                            unselectedLabelStyle:
                            TextStyle(color: Colors.black54),
                            tabs: [
                              Tab(
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "Messages",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "Notifications",
                                  ),
                                ),
                              ),
                            ],
                            // onTap: ,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      //bottom overflowed
                      height: 630,
                      child: TabBarView(
                        controller: _controller,
                        children: [
                         Messages(),
                          Notifications(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ));
  }
}
