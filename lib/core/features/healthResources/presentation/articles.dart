import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:health_resources/core/features/healthResources/domain/repository/repository.dart';

import 'widgets/articlesDetails.dart';
import 'package:health_resources/core/features/healthResources/presentation/blocs/article_states.dart';
import 'package:health_resources/core/features/healthResources/presentation/blocs/article_events.dart';
import 'package:health_resources/core/features/healthResources/presentation/blocs/article_blocs.dart';
import 'package:health_resources/core/features/healthResources/presentation/blocs/articleDetails_blocs.dart';
import 'package:health_resources/core/features/healthResources/domain/models/article_model.dart';
import 'package:health_resources/utils/utils.dart';
// import 'package:flutter_html/flutter_html.dart';

class Articles extends StatefulWidget {
  const Articles({Key? key}) : super(key: key);

  int? postId;

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  bool _isLoading = false;
  List<ArticleModel> _articles = [];

  @override
  void initState() {
    super.initState();
    context.read<ArticleBloc>().add(FetchArticleEvent());
    debugPrint("init state called");
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ArticleBloc, ArticleState>(
      listener: (context, state) {
        debugPrint("the current state is $state");

        setState(() {
          _isLoading = state is LoadingState;
        });
        if (state is ErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
          debugPrint("${state.errorMessage}");
        }
        if (state is LoadedState) {
          debugPrint("the articles on the widget are $_articles");
          setState(() {
            _articles = state.articles;
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
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
          body: _isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Container(
                  padding: EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                         builder:  (_) {
                           return BlocProvider.value(
                             value: BlocProvider.of<ArticleDetailsBloc>(context),
                             child: ArticlesDetails(),
                           );
                         },
                      ),
                    ),
                    child: ListView.builder(
                        itemCount: _articles.length,
                        itemBuilder: (context, index) {
                          final article = _articles[index];
                          // final links = article.links?.toList() ?? [];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    "$myrekod_file_url/${article.media?.toList().firstWhere((element) => element.type == "Image").systemName ?? ""}",
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                // "Press Release".toUpperCase(),
                                article.title ?? "No title".substring(0, 3),
                                style: TextStyle(
                                  color: Colors.blue[800],
                                  fontSize: 18,
                                  // fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              // Html(
                              //   data: article.content!,
                              //   onImageTap: (url, context, attributes, element) => {} ,
                              //   style: {
                              //     'p': Style(
                              //       fontSize: FontSize(18),
                              //       maxLines: 3,
                              //       textOverflow: TextOverflow.ellipsis,
                              //     ),}
                              // ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                      style:
                                          TextStyle(color: Colors.blue[900])),
                                  IconButton(
                                    icon: Icon(Icons.favorite,
                                        color: (article.didLike!)
                                            ? Colors.black26
                                            : Colors.blue[900]),
                                    // highlightColor: Colors.blue[900],
                                    onPressed: () {},
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
                )),
    );
  }
}
