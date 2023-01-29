// ignore: file_names
import 'package:flutter/material.dart';
import 'package:test1/models/articles_models.dart';
import 'package:test1/pages/articleScreen.dart';
import 'package:test1/widget/bottomNavigator.dart';
import 'package:test1/widget/imageContainer.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});
  static const routeName = '/discover';
  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  List<String> tabs = ["Biznes", "Siyasət", "Idman"];
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    //  final article = ModalRoute.of(context)!.settings.arguments as Article;
    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
        body: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                  onPressed: () {},
                  // ignore: prefer_const_constructors
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  )),
            ),
            bottomNavigationBar: const ButtonNavigatorBar(index: 1),
            body: ListView(
              padding: EdgeInsets.all(20.0),
              // ignore: prefer_const_literals_to_create_immutables
              children: [DiscoverNews(), CategoryNews(tabs: tabs)],
            )),
      ),
    );
  }
}

class CategoryNews extends StatelessWidget {
  const CategoryNews({super.key, required this.tabs});
  final List<String> tabs;
  @override
  Widget build(BuildContext context) {
    final articles = Article.article;
    return Column(
      children: [
        TabBar(
          tabs: tabs
              .map((tab) => Tab(
                    icon: Text(
                      tab,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ))
              .toList(),
          labelColor: Colors.black,
          indicatorColor: Colors.black,
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: TabBarView(
                children: tabs
                    .map((tab) => ListView.builder(
                        shrinkWrap: true,
                        itemCount: articles.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, ArticleScreen.routeName, arguments: articles[index]);
                            },
                            child: Row(
                              children: [
                                ImageContainer(
                                    width: 80,
                                    height: 80,
                                    margin: EdgeInsets.all(10.0),
                                    borderRadius: 5,
                                    imageUrl: articles[index].imageUrl),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        articles[index].title,
                                        maxLines: 2,
                                        overflow: TextOverflow.clip,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                      // ignore: prefer_const_constructors
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        children: [
                                          // ignore: prefer_const_constructors
                                          Icon(
                                            Icons.schedule,
                                            size: 18.0,
                                          ),
                                          Text(
                                              '${DateTime.now().difference(articles[index].createdAt)}',
                                              // maxLines: 2,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!),
                                          // ignore: prefer_const_constructors
                                          SizedBox(
                                            width: 20.0,
                                          ),
                                           // ignore: prefer_const_constructors
                                           Icon(
                                            Icons.visibility,
                                            size: 18.0,
                                          ),
                                           Text(
                                                '${articles[index].views} views',
                                              // maxLines: 2,
                                              // ignore: prefer_const_constructors
                                              style: TextStyle(fontSize: 12)),
                          
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }))
                    .toList()))
      ],
    );
  }
}

class DiscoverNews extends StatelessWidget {
  const DiscoverNews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Axtarış',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.w900, color: Colors.black)),
          // ignore: prefer_const_constructors
          SizedBox(height: 5),
          Text('Digər Xəbərlər',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontWeight: FontWeight.w900, color: Colors.black)),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            // ignore: prefer_const_constructors
            decoration: InputDecoration(
                hintText: 'Search',
                fillColor: Colors.grey.shade200,
                filled: true,
                // ignore: prefer_const_constructors
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                // ignore: prefer_const_constructors
                suffixIcon: RotatedBox(
                  quarterTurns: 1,
                  // ignore: prefer_const_constructors
                  child: Icon(
                    Icons.tune,
                    color: Colors.grey,
                  ),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none)),
          )
        ],
      ),
    );
  }
}
