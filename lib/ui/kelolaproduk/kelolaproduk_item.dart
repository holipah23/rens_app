import 'package:flutter/material.dart';
import '../../model/kelolaproduk.dart';
import 'kelolaproduk_detail.dart';

class KelolaProdukItem extends StatelessWidget {
  final KelolaProduk produk;

  const KelolaProdukItem({super.key, required this.produk});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text("${produk.namaproduk}"),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => KelolaProdukDetail(produk: produk)));
      },
    );
  }
}
