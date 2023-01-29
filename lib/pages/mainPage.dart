// ignore: file_names
// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:test1/models/articles_models.dart';
import 'package:test1/pages/articleScreen.dart';
import 'package:test1/widget/imageContainer.dart';
import 'package:test1/widget/bottomNavigator.dart';
import 'package:test1/widget/custom_tag.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static const routeName = '/';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Article article = Article.article[0];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              )),
        ),
        bottomNavigationBar: ButtonNavigatorBar(index: 0),
        extendBodyBehindAppBar: true,
        body: ListView(
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            NewsOfTheDay(article: article),
            BreakingNews(articles: Article.article)
          ],
        ));
  }
}

class BreakingNews extends StatelessWidget {
  const BreakingNews({super.key, required this.articles});
  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Son Xəbərlər',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.bold)),
              Text('Ətraflı',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 250.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      margin: EdgeInsets.only(right: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, ArticleScreen.routeName,
                              arguments: articles[index]);
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ImageContainer(
                                width: MediaQuery.of(context).size.width * 0.5,
                                imageUrl: articles[index].imageUrl),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(articles[index].title,
                                maxLines: 3,
                                // maxLines: 2,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        height: 1.5)),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                                '${DateTime.now().difference(articles[index].createdAt)}',
                                // maxLines: 2,
                                style: Theme.of(context).textTheme.bodySmall!),
                            Expanded(
                              child: Text(' by ${articles[index].author}',
                                  // maxLines: 2,
                                  style:
                                      Theme.of(context).textTheme.bodySmall!),
                            ),
                          ],
                        ),
                      ));
                }),
          )
        ],
      ),
    );
  }
}

class NewsOfTheDay extends StatelessWidget {
  const NewsOfTheDay({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
      height: MediaQuery.of(context).size.height * 0.45,
      width: double.infinity,
      padding: EdgeInsets.all(20),
      imageUrl: article.imageUrl,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTag(backgroundColor: Colors.grey.withAlpha(150), children: [
            Text("Günün Xəbəri",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white))
          ]),
          SizedBox(
            height: 10.0,
          ),
          Text(
            article.title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                height: 1.25),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            child: Row(
              children: [
                Text('Ətraflı Oxu',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        height: 1.25)),
                SizedBox(
                  width: 10.0,
                ),
                Icon(
                  Icons.arrow_right_alt,
                  color: Colors.white,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
