import 'package:flutter/material.dart';
import 'package:health_resources/core/features/healthResources/presentation/blocs/comments_events.dart';
import 'package:health_resources/core/features/healthResources/presentation/blocs/comments_state.dart';
import 'package:health_resources/core/features/healthResources/presentation/blocs/comment_blocs.dart';
import 'package:health_resources/core/features/healthResources/domain/models/comment_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_resources/core/features/healthResources/domain/repository/commentRepository.dart';

class CommentsOnComment extends StatefulWidget {
  CommentsOnComment(
      {Key? key,
      // required this.postId,
      required this.commentId})
      : super(key: key);

  // final int commentArticleId;
  final int commentId;

  @override
  State<CommentsOnComment> createState() => _CommentsOnCommentState();
}

class _CommentsOnCommentState extends State<CommentsOnComment> {

  bool _isLoading = false;
  List<CommentModel> _comments = [];

  @override
  void initState() {
    super.initState();
    context.read<CommentsBloc>().add(FetchCommentsEvent());
    debugPrint("init state called");
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CommentsBloc, CommentsState>(
      listener: (context, state) {
        debugPrint("the current comment on comment state is $state");

        setState(() {
          _isLoading = state is CommentsLoadingState;
        });
        if (state is CommentsErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.commentErrorMessage),
            ),
          );
          debugPrint("${state.commentErrorMessage}");
        }
        if (state is CommentsLoadedState) {
          debugPrint("the comments on the widget are $_comments");
          setState(() {
            _comments = state.comments;
          });
        }
      },
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 5),
          padding: EdgeInsets.all(10),
          // height: MediaQuery.of(context).size.height * 20.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBar(
                      leading: IconButton(
                        tooltip: 'Back',
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Return to previous page")));
                        },
                        icon: Icon(Icons.arrow_back_ios_new_sharp),
                      ),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      title: Text(
                        "Comments",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700),
                      ),
                      actions: [
                        IconButton(
                          icon: const Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                          tooltip: 'More',
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Menu")));
                          },
                        ),
                      ]),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                              )
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/large_half_engineer_and_half_ai_person_47b8c9f24d.png"),
                            )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Bratipah"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("replying"),
                  SizedBox(
                    height: 10,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton.icon(
                          icon: Icon(
                            Icons.chat_bubble_outlined,
                            color: Colors.black26,
                          ),
                          label: Text(
                            '6 comment(s)',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {
                            print("comments");
                          },
                        ),
                        VerticalDivider(thickness: 2),
                        TextButton.icon(
                          icon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite, color: Colors.black12),
                          ),
                          label: Text(
                            '2',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return SingleChildScrollView(
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              padding: EdgeInsets.all(20),
                              alignment: Alignment.center,
                              height: 105,
                              decoration: BoxDecoration(
                                  color: Colors.black12.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "awesome",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Text(
                                      "23-09-2021",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w200),
                                    ),
                                  ),
                                  Text(
                                    "Bratipah Kioko",
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 40,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      color: Colors.black26.withOpacity(0.2),
                                    )
                                  ],
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/large_half_engineer_and_half_ai_person_47b8c9f24d.png"),
                                  )),
                            ),
                            Positioned(
                              right: 25.0,
                              bottom: 1.0,
                              child: Container(
                                padding: EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 0.5, color: Colors.black12)),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.favorite,
                                          color: Colors.blue[900]),
                                    ),
                                    Text(" 2 likes"),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.send_rounded,
                              color: Colors.blue[900],
                            )),
                        hintText: "Type your reply here",
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 20.0),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
