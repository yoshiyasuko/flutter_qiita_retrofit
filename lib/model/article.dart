import 'package:flutter_qiita_retrofit/model/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable(explicitToJson: true)
class Article {
  String id;
  String title;
  String url;
  User user;

  Article(
      {required this.id,
      required this.title,
      required this.url,
      required this.user});

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
