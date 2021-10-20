import 'package:flutter/material.dart';
import 'package:flutter_qiita_retrofit/model/article.dart';
import 'package:flutter_qiita_retrofit/view/article_detail_web_view.dart';

class ArticleListTile extends StatelessWidget {
  ArticleListTile({required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipOval(
        child: Image.network(article.user.profileImageUrl,
            width: 44,
            height: 44, errorBuilder: (context, exception, stacktrace) {
          return Text('Q');
        }),
      ),
      title: Text(article.title),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticleDetailWebView(article: article)));
      },
    );
  }
}
