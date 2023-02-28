import 'package:mobx_demo/constants/constants.dart';
import 'package:mobx_demo/model/album_model.dart';

import 'package:http/http.dart';

class AlbumApi {
  Future<List<AlbumModel>> getAlbums() async {
    try {
      Response response = await get(Uri.parse(Constants.albumUrl));
      return albumModelFromJson(response.body);
    } catch (e) {
      rethrow;
    }
  }
}
