import 'package:dio/dio.dart';
import 'package:flutter_qiita_retrofit/client/api_client.dart';
import 'package:flutter_qiita_retrofit/model/article.dart';
import 'package:flutter_qiita_retrofit/repository/article_repository.dart';
import 'package:flutter_qiita_retrofit/response/result.dart';

class ArticleRepositoryImpl with ArticleRepository {
  final ApiClient _client;

  ArticleRepositoryImpl([ApiClient? client])
      : _client = client ?? ApiClient(Dio());

  @override
  Future<Result<List<Article>>> fetchArticles() {
    return _client
        .fetchArticles()
        .then((articles) => Result<List<Article>>.success(articles))
        .catchError((error) => Result<List<Article>>.failure(error));
  }
}
