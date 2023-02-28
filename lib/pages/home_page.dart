import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_demo/pages/favorites_page.dart';
import 'package:mobx_demo/store/album_store.dart';
import 'package:mobx_demo/store/favorite_store.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final albumStore = context.read<AlbumStore>();
    final favStore = context.read<FavoriteStore>();
    albumStore.getAlbums();
    return Observer(builder: (context) {
      return Scaffold(
          appBar: AppBar(
            title: const Text("MobX Demo"),
            actions: [
              if (favStore.favList.isNotEmpty)
                Row(
                  children: [
                    Text(
                      favStore.favList.length.toString(),
                      style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const FavoritesPage()));
                        },
                        icon: const Icon(Icons.favorite)),
                  ],
                )
            ],
          ),
          body: albumStore.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: albumStore.albumList.length,
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          if (!favStore.favList
                              .contains(albumStore.albumList[index])) {
                            favStore.addFavorites(albumStore.albumList[index]);
                            const snackBar = SnackBar(
                              content: Text('Added to favorites!'),
                              behavior: SnackBarBehavior.floating,
                              duration: Duration(seconds: 1),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          } else {
                            favStore
                                .removeFavorites(albumStore.albumList[index]);
                            const snackBar = SnackBar(
                              content: Text('Removed from favorites!'),
                              behavior: SnackBarBehavior.floating,
                              duration: Duration(seconds: 1),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        },
                        child: Container(
                            margin: const EdgeInsets.all(4.0),
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                color: favStore.favList
                                        .contains(albumStore.albumList[index])
                                    ? Colors.amberAccent
                                    : Colors.amber,
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Text(
                              "${albumStore.albumList[index].id} : ${albumStore.albumList[index].title} ",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            )),
                      )));
    });
  }
}
