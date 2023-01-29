import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:equatable/equatable.dart';
import 'package:test1/models/articles_models.dart';
import 'package:test1/widget/custom_tag.dart';
import 'package:test1/widget/imageContainer.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});
  static const routeName = '/article';
  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Article;
    return ImageContainer(
      width: double.infinity,
      imageUrl: article.imageUrl,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          // ignore: prefer_const_constructors
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        body: ListView(
          children: [
            NewHeadLine(
              article: article,
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                  color: Colors.white,
                  // ignore: prefer_const_constructors
                  borderRadius: BorderRadius.only(
                      // ignore: prefer_const_constructors
                      topLeft: Radius.circular(20.0),
                      // ignore: prefer_const_constructors
                      topRight: Radius.circular(20.0))),
              child: Column(
                children: [
                  Text(article.title, style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),),
                  Text(article.subtitle, style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NewHeadLine extends StatelessWidget {
  const NewHeadLine({
    super.key,
    required this.article,
  });
  final Article article;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          CustomTag(backgroundColor: Colors.grey.withAlpha(150), children: [
            Text(article.category,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white))
          ]),
          Text(article.title,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.white,
                  height: 1.25,
                  fontWeight: FontWeight.bold)),
          Text(article.subtitle,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white))
        ],
      ),
    );
  }
}
