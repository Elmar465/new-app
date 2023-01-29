// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test1/pages/discoverPage.dart';
import 'package:test1/pages/articleScreen.dart';
import 'package:test1/pages/mainPage.dart';

main() {
  // ignore: prefer_const_constructors
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material App",
      initialRoute: '/',
      routes: {
        MainPage.routeName : (context) => MainPage(),
        ArticleScreen.routeName : (context) => ArticleScreen(),
        DiscoverPage.routeName : (context) => DiscoverPage()
      },
    );
      
      
      
    
  }
}