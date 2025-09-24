import 'package:assessment_app/providers/posts_provider.dart';
import 'package:assessment_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PostsProvider(),
      //using material 3 and theme
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 85, 154, 211),
            foregroundColor: Colors.white,
          ),
          //pressing a post for longer time will show Hover and splash
          hoverColor: Color.fromARGB(255, 85, 154, 211), // hover effect
          splashColor: Colors.blue, // ripple on tap
        ),
        home: HomePage(),
      ),
    );
  }
}
