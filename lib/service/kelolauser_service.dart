import 'package:dio/dio.dart';
import '../helpers/api_client.dart';
import '../model/kelolauser.dart';

class KelolaUserService {
  Future<List<KelolaUser>> listData() async {
    final Response response = await ApiClient().get('user');
    print(response);
    final List data = response.data as List;
    List<KelolaUser> result =
        data.map((json) => KelolaUser.fromJson(json)).toList();
    return result;
  }

  Future<KelolaUser> simpan(KelolaUser user) async {
    var data = user.toJson();
    final Response response = await ApiClient().post('user', data);
    KelolaUser result = KelolaUser.fromJson(response.data);
    return result;
  }

  Future<KelolaUser> ubah(KelolaUser user, String id) async {
    var data = user.toJson();
    final Response response = await ApiClient().put('user/${id}', data);
    print(response);
    KelolaUser result = KelolaUser.fromJson(response.data);
    return result;
  }

  Future<KelolaUser> getById(String id) async {
    final Response response = await ApiClient().get('user/${id}');
    KelolaUser result = KelolaUser.fromJson(response.data);
    return result;
  }

  Future<KelolaUser> hapus(KelolaUser user) async {
    final Response response = await ApiClient().delete('user/${user.id}');
    KelolaUser result = KelolaUser.fromJson(response.data);
    return result;
  }
}
