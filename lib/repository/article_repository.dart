import 'package:flutter_qiita_retrofit/model/article.dart';
import 'package:flutter_qiita_retrofit/response/result.dart';

abstract class ArticleRepository {
  Future<Result<List<Article>>> fetchArticles();
}
