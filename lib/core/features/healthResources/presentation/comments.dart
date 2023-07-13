import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_resources/core/features/healthResources/domain/repository/commentRepository.dart';
import 'package:health_resources/core/features/healthResources/domain/models/comment_model.dart';
import 'package:health_resources/core/features/healthResources/presentation/blocs/comments_events.dart';
import 'package:health_resources/core/features/healthResources/presentation/blocs/comments_state.dart';
import 'package:health_resources/core/features/healthResources/presentation/blocs/comment_blocs.dart';
import 'widgets/commentsOnComment.dart';
import 'package:health_resources/utils/time_util.dart';
import 'package:health_resources/utils/utils.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class Comments extends StatefulWidget {
  Comments({
    Key? key,
    required this.articleId,
  }) : super(key: key);

  final articleId;

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  // final TextCommentsController _controller;
  // _controller = TextCommentsController();
  bool _isLoading = false;
  List<CommentModel> _comments = [];

  @override
  void initState() {
    super.initState();
    context.read<CommentsBloc>().add(FetchCommentsEvent());
    debugPrint("init state called");
  }
  void _postComment(context) {
    BlocProvider.of<CommentsBloc>(context).add(UpdateCommentsEvent(_comments));
  }


  @override
  Widget build(BuildContext context) {
    final TextEditingController _commentController = TextEditingController();
    return BlocListener<CommentsBloc, CommentsState>(
      listener: (context, state) {
        debugPrint("the current comment state is $state");

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
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(10),
          // height: MediaQuery.of(context).size.height * 18.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppBar(
                      title: const Text(
                        "Comments",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700),
                      ),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      actions: [
                        IconButton(
                          icon: const Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                          tooltip: 'Exit',
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Exit")));
                          },
                        ),
                      ]),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: _comments.length,
                    // itemCount: 4,
                    itemBuilder: (context, index) {
                      final comments = _comments[index];
                      debugPrint(comments.content);
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) {
                                return BlocProvider.value(
                                  value: BlocProvider.of<CommentsBloc>(context),
                                  child: CommentsOnComment(
                                    commentId: comments.id,
                                  ),
                                );
                              },
                            ),
                          );
                        },
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
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
                                    // "awesome",
                                    comments.content,
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Text(
                                      // "23-09-2021",
                                      comments.updated.getJustDate(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w200),
                                    ),
                                  ),
                                  Text(
                                    // "Bratipah Kioko",
                                    "${comments.createdBy.firstName} ${comments.createdBy.lastName}",
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
                              width: 40,
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
                                    image: NetworkImage(
                                      "$myrekod_file_url/${comments.createdBy.profilePicture}",
                                      // firstWhere((element) => element.type == "Int").profilePicture ?? ""}",
                                      // comments.createdBy.profilePicture.toString(),
                                      // "assets/large_half_engineer_and_half_ai_person_47b8c9f24d.png"
                                    ),
                                  )),
                            ),
                            Positioned(
                              right: 25.0,
                              bottom: 0.5,
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
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: TextField(
                      controller: _commentController,
                      onChanged: (value) {
                        setState(() {
                          // controller.text = value.toString();
                        });
                      },
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              final commentText = _commentController.text;
                              if (commentText != null) {
                                _postComment(context);
                                _commentController.text = '';
                              }
                            },
                            icon: Icon(
                              Icons.send_rounded,
                              color: Colors.blue[900],
                            )),
                        hintText: "Type your comment here",
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        border: OutlineInputBorder(
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
