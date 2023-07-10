import 'package:flutter/material.dart';
import 'package:health_resources/core/features/healthResources/presentation/articles.dart';
import 'package:health_resources/core/features/healthResources/presentation/comments.dart';
// import 'package:health_resources/core/features/healthResources/presentation/detailsTest.dart';
import 'package:health_resources/core/features/healthResources/presentation/widgets/articlesDetails.dart';
import 'package:health_resources/core/features/healthResources/presentation/widgets/commentsOnComment.dart';
import 'package:health_resources/core/features/healthResources/presentation/widgets/CommentTry.dart';
import 'package:health_resources/core/features/healthResources/domain/repository/repository.dart';
import 'package:health_resources/core/features/healthResources/domain/repository/commentRepository.dart';
import 'package:health_resources/core/features/healthResources/presentation/blocs/article_blocs.dart';
import 'package:health_resources/core/features/healthResources/presentation/blocs/comment_blocs.dart';
import 'package:health_resources/core/features/healthResources/presentation/blocs/articleDetails_blocs.dart';

// import 'package:health_resources/core/features/healthResources/presentation/blocs/comment_blocs.dart';
import 'package:health_resources/core/features/inbox/presentation/widgets/chatPage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health Resources',
      theme: ThemeData(
          useMaterial3: true,
          appBarTheme: AppBarTheme(
            elevation: 0, // This removes the shadow from all App Bars.
          )),
      home:
      // Comments(),
      // DetailsTest(),
      Scaffold(
        body: MultiBlocProvider(
          providers: [
            BlocProvider<ArticleBloc>(
                create: (BuildContext context) =>
                    ArticleBloc(ArticleRepository())),
            BlocProvider<ArticleDetailsBloc>(
              create: (BuildContext context) =>
                  ArticleDetailsBloc(ArticleRepository()),
            ),
            BlocProvider<CommentsBloc>(
              create: (BuildContext context) =>
                  CommentsBloc(CommentRepository()),
            ),
          ],
          child: Articles(),
        ),
      ),
    );
    // ChatPage(),
    // ArticleDetails(),
    // );
  }
}
