import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class Comments extends StatefulWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 18.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                  leading: const Text(
                    "Comments",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
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
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        padding: EdgeInsets.all(20),
                        alignment: Alignment.center,
                        height: 95,
                        decoration: BoxDecoration(
                            color: Colors.black12.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
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
                            image: const DecorationImage(
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
                                onPressed:(){},
                                icon: Icon(Icons.favorite,
                                    color: Colors.blue[900]
                                ),
                              ),
                              Text(" 2 likes"),
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
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
                    hintText: "Type your comment here",
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 20.0),
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
    );
    //   BlocProvider(
    //   create: (context) => CommentsBloc(
    //     RepositoryProvider.of<CommentRepository>(context),
    //   )..add(LoadCommentsEvent()),
    //   child: Scaffold(
    //     body: BlocBuilder<CommentsBloc, CommentsState>(builder: (context, state){
    //       final CommentRepository commentRepository;
    //       if (state is CommentsLoadingState) {
    //         return const Center(
    //           child: CircularProgressIndicator(),
    //         );
    //       } else if (state is CommentsLoadedState) {
    //         List<String> comments = [];
    //         TextEditingController commentController = TextEditingController();
    //         TextEditingController likeController = TextEditingController();
    //         return;
    //       } else if (state is CommentsErrorState) {
    //         return Center(
    //           child: Text("Error 404"),
    //         );
    //       }
    //     }),
    //   ),
    // );
  }
}
