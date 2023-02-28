import 'dart:developer';

import 'package:mobx/mobx.dart';
import 'package:mobx_demo/model/album_model.dart';

part 'favorite_store.g.dart';

class FavoriteStore = _FavoriteStore with _$FavoriteStore;

abstract class _FavoriteStore with Store {
  @observable
  ObservableList<AlbumModel> favList = ObservableList.of([]);

  @action
  addFavorites(AlbumModel item) {
    favList.add(item);
  }

  @action
  removeFavorites(AlbumModel item) {
    favList.remove(item);
  }
}
