import 'package:flutter/material.dart';
import 'package:health_resources/core/features/healthResources/presentation/articles.dart';
import 'package:health_resources/core/features/healthResources/domain/repository/repository.dart';
import 'package:health_resources/core/features/healthResources/presentation/blocs/article_blocs.dart';
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
          )
      ),
      home:
      Scaffold(
        body: MultiBlocProvider(
            providers: [
              BlocProvider(
                  create: (_) => ArticleBloc(ArticleRepository())
              ),
              // BlocProvider<CommentBloc>(
              //     create: (_) =>CommentsBloc()
              // ),
            ],
          child: Builder(builder: (context) {
            return Articles();
          }
          ),
        ) ,
      ),
      // ChatPage(),
      // ArticleDetails(),
    );
  }
}

