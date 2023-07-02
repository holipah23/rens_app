import 'package:flutter/material.dart';
import '../../model/kelolaproduk.dart';
import '../../service/kelolaproduk_service.dart';
import '../../ui/kelolaproduk/kelolaproduk_update.dart';
import 'kelolaproduk_page.dart';

class KelolaProdukDetail extends StatefulWidget {
  final KelolaProduk produk;

  const KelolaProdukDetail({Key? key, required this.produk}) : super(key: key);
  _KelolaProdukDetailState createState() => _KelolaProdukDetailState();
}

class _KelolaProdukDetailState extends State<KelolaProdukDetail> {
  Stream<KelolaProduk> getData() async* {
    KelolaProduk data =
        await KelolaProdukService().getById(widget.produk.id.toString());
    yield data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Produk"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text(
            "Id Produk : ${widget.produk.idproduk}",
            textAlign: TextAlign.justify,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Text(
            "Nama Produk : ${widget.produk.namaproduk}",
            textAlign: TextAlign.justify,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Text(
            "Harga Produk : ${widget.produk.harga}",
            textAlign: TextAlign.justify,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Text(
            "Stok : ${widget.produk.stokproduk}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Text(
            "Size : ${widget.produk.size}",
            textAlign: TextAlign.justify,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Text(
            "Keterangan : ${widget.produk.keterangan}",
            textAlign: TextAlign.justify,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [_tombolUbah()],
          )
        ],
      ),
    );
  }

  _tombolUbah() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      KelolaProdukUpdate(produk: widget.produk)));
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        child: Text("Ubah"));
  }
}
