// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FavoriteStore on _FavoriteStore, Store {
  late final _$favListAtom =
      Atom(name: '_FavoriteStore.favList', context: context);

  @override
  ObservableList<AlbumModel> get favList {
    _$favListAtom.reportRead();
    return super.favList;
  }

  @override
  set favList(ObservableList<AlbumModel> value) {
    _$favListAtom.reportWrite(value, super.favList, () {
      super.favList = value;
    });
  }

  late final _$_FavoriteStoreActionController =
      ActionController(name: '_FavoriteStore', context: context);

  @override
  dynamic addFavorites(AlbumModel item) {
    final _$actionInfo = _$_FavoriteStoreActionController.startAction(
        name: '_FavoriteStore.addFavorites');
    try {
      return super.addFavorites(item);
    } finally {
      _$_FavoriteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeFavorites(AlbumModel item) {
    final _$actionInfo = _$_FavoriteStoreActionController.startAction(
        name: '_FavoriteStore.removeFavorites');
    try {
      return super.removeFavorites(item);
    } finally {
      _$_FavoriteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
favList: ${favList}
    ''';
  }
}
