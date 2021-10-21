import 'package:flutter/material.dart';
import 'package:flutter_qiita_retrofit/view/article_list_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ArticleListView(),
    );
  }
}
