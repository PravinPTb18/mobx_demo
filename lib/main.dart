import 'package:flutter/material.dart';
import 'package:mobx_demo/store/album_store.dart';
import 'package:mobx_demo/store/favorite_store.dart';
import 'package:provider/provider.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider<AlbumStore>(
        create: (_) => AlbumStore(),
      ),
      Provider<FavoriteStore>(
        create: (_) => FavoriteStore(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MobX Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.amberAccent,
          appBarTheme: const AppBarTheme(
              color: Colors.amber,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0))),
      home: const HomePage(),
    );
  }
}
