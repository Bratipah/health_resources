import 'package:health_resources/core/features/healthResources/domain/repository/repository.dart';
import 'article_events.dart';
import 'article_states.dart';
import 'package:health_resources/core/features/healthResources/domain/models/article_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  final ArticleRepository _articleRepository;

  ArticleBloc(this._articleRepository) : super(EmptyState()) {
    on<FetchArticleEvent>((event, emit) async {
      emit(LoadingState());
      try {
        final articles =
            await _articleRepository.fetchArticles();
        emit(LoadedState(articles));
      } catch (e) {
        emit(ErrorState(errorMessage: e.toString()));
      }
    });
  }
}
