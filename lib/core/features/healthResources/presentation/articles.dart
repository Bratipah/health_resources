import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:health_resources/core/features/healthResources/domain/repository/repository.dart';

import 'widgets/articlesDetails.dart';
import 'package:health_resources/core/features/healthResources/presentation/blocs/article_states.dart';
import 'package:health_resources/core/features/healthResources/presentation/blocs/article_events.dart';
import 'package:health_resources/core/features/healthResources/presentation/blocs/article_blocs.dart';
import 'package:health_resources/core/features/healthResources/domain/models/article_model.dart';

class Articles extends StatefulWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  late ArticleBloc _ArticleBloc;
  // final List<ArticleModel> articles = [];
   List<dynamic> articles = [];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _ArticleBloc = ArticleBloc(
      ArticleRepository(),
    )..add(FetchArticleEvent());
  }

  @override
  Widget build(BuildContext context) {
    debugPrint(article.title);
    // debugPrint(views.toString());
    // debugPrint(likes.toString());
    return BlocListener<ArticleBloc, ArticleState>(
      listener: (context, state) {
        setState(() {
          _isLoading = state is LoadingState;
        });
        if (state is ErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
        }
        if (state is LoadedState) {
          setState(() {
            articles = state.articles;
          });
        }
      },
      child: Scaffold(
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
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Health Resources",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
        body: _isLoading
            ? CircularProgressIndicator()
            : Container(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RepositoryProvider(
                              create: (context) => ArticleRepository(),
                              child: ArticlesDetails(),
                            )),
                  ),
                  child: ListView.builder(
                      itemCount: articles.length,
                      itemBuilder: (context, index) {
                        final article = articles[index];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                "assets/christin-hume-Hcfwew744z4-unsplash.jpg",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              // "Press Release".toUpperCase(),
                              article.title ?? "No title",
                              style: TextStyle(
                                color: Colors.blue[800],
                                fontSize: 18,
                                // fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              // "In this article, we'll explore how your approach to investing and finance may change at different stages of life and then offer some tips on how to adapt your investment strategy to meet your changing needs.",
                              article.content ?? "",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Spacer(),
                                IconButton(
                                  icon: Icon(Icons.remove_red_eye_sharp,
                                      color: Colors.black26),
                                  onPressed: () {
                                    final snackBar = SnackBar(
                                      content: Text("Views"),
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  },
                                ),
                                Text(
                                    // "1265",
                                    article.views.toString(),
                                    // views,
                                    style: TextStyle(color: Colors.blue[900])),
                                IconButton(
                                  // didLike ?
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.black26,
                                    // didLike ? color: Colors.black26 : color:Colors.blue[900],
                                  ),
                                  onPressed: () {
                                    final snackBar = SnackBar(
                                      content: Text("Likes"),
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  },
                                ),
                                Text(
                                  // "4",
                                  article.likes.toString(),
                                  // likes,
                                  style: TextStyle(color: Colors.blue[900]),
                                )
                              ],
                            ),
                            Divider(thickness: 1),
                          ],
                        );
                      }),
                ),
              ),
      ),

      // return Container();
    );
  }
}
