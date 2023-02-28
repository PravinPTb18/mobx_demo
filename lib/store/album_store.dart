import 'package:mobx/mobx.dart';
import 'package:mobx_demo/api/album_api.dart';
import 'package:mobx_demo/model/album_model.dart';

part 'album_store.g.dart';

class AlbumStore = _AlbumStore with _$AlbumStore;

abstract class _AlbumStore with Store {
  final AlbumApi albumApi = AlbumApi();

  @observable
  List<AlbumModel> albumList = [];

  @observable
  bool isLoading = false;

  @action
  getAlbums() async {
    isLoading = true;
    final list = await albumApi.getAlbums();
    albumList = list;
    isLoading = false;
  }
}
