// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AlbumStore on _AlbumStore, Store {
  late final _$albumListAtom =
      Atom(name: '_AlbumStore.albumList', context: context);

  @override
  List<AlbumModel> get albumList {
    _$albumListAtom.reportRead();
    return super.albumList;
  }

  @override
  set albumList(List<AlbumModel> value) {
    _$albumListAtom.reportWrite(value, super.albumList, () {
      super.albumList = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_AlbumStore.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$getAlbumsAsyncAction =
      AsyncAction('_AlbumStore.getAlbums', context: context);

  @override
  Future getAlbums() {
    return _$getAlbumsAsyncAction.run(() => super.getAlbums());
  }

  @override
  String toString() {
    return '''
albumList: ${albumList},
isLoading: ${isLoading}
    ''';
  }
}
