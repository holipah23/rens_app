import 'package:dio/dio.dart';
import '../helpers/api_client.dart';
import '../model/kelolaproduk.dart';

class KelolaProdukService {
  Future<List<KelolaProduk>> listData() async {
    final Response response = await ApiClient().get('product');
    print(response);
    final List data = response.data as List;
    List<KelolaProduk> result =
        data.map((json) => KelolaProduk.fromJson(json)).toList();
    return result;
  }

  Future<KelolaProduk> simpan(KelolaProduk product) async {
    var data = product.toJson();
    final Response response = await ApiClient().post('product', data);
    KelolaProduk result = KelolaProduk.fromJson(response.data);
    return result;
  }

  Future<KelolaProduk> ubah(KelolaProduk product, String id) async {
    var data = product.toJson();
    final Response response = await ApiClient().put('product/${id}', data);
    print(response);
    KelolaProduk result = KelolaProduk.fromJson(response.data);
    return result;
  }

  Future<KelolaProduk> getById(String id) async {
    final Response response = await ApiClient().get('product/${id}');
    KelolaProduk result = KelolaProduk.fromJson(response.data);
    return result;
  }

  Future<KelolaProduk> hapus(KelolaProduk product) async {
    final Response response = await ApiClient().delete('product/${product.id}');
    KelolaProduk result = KelolaProduk.fromJson(response.data);
    return result;
  }
}
