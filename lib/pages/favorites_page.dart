import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_demo/store/favorite_store.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final favStore = context.read<FavoriteStore>();
    return Observer(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("${favStore.favList.length} Favorites"),
        ),
        body: ListView.builder(
            itemCount: favStore.favList.length,
            itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.all(4.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Text(
                  "${favStore.favList[index].id} : ${favStore.favList[index].title} ",
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ))),
      );
    });
  }
}
