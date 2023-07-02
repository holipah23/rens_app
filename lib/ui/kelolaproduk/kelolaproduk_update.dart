import 'package:flutter/material.dart';
import 'package:rens_app/model/kelolaproduk.dart';
import 'package:rens_app/ui/kelolaproduk/kelolaproduk_detail.dart';

class KelolaProdukUpdate extends StatefulWidget {
  final KelolaProduk produk;
  const KelolaProdukUpdate({super.key, required this.produk});

  @override
  State<KelolaProdukUpdate> createState() => _KelolaProdukUpdateState();
}

class _KelolaProdukUpdateState extends State<KelolaProdukUpdate> {
  final _keyForm = GlobalKey<FormState>();
  final _idprodukTextboxCtr = TextEditingController();
  final _namaprodukTextboxCtr = TextEditingController();
  final _hargaTextboxCtr = TextEditingController();
  final _stokprodukTextboxCtr = TextEditingController();
  final _sizeTextboxCtr = TextEditingController();
  final _keteranganTextboxCtr = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _idprodukTextboxCtr.text = widget.produk.idproduk;
      _namaprodukTextboxCtr.text = widget.produk.namaproduk;
      _hargaTextboxCtr.text = widget.produk.harga;
      _stokprodukTextboxCtr.text = widget.produk.stokproduk;
      _sizeTextboxCtr.text = widget.produk.size;
      _keteranganTextboxCtr.text = widget.produk.keterangan;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Form Update Produk"),
        ),
        body: Container(
            margin: const EdgeInsets.only(left: 25, right: 25),
            child: SingleChildScrollView(
              child: Form(
                key: _keyForm,
                child: Column(
                  children: [
                    _idprodukTextfield(),
                    _namaprodukTextfield(),
                    _hargaTextfield(),
                    _stokprodukTextfield(),
                    _sizeTextfield(),
                    _keteranganTextfield(),
                    const SizedBox(
                      height: 20,
                    ),
                    _tombolSimpan()
                  ],
                ),
              ),
            )));
  }

  _idprodukTextfield() {
    return TextField(
      decoration: InputDecoration(labelText: "Id Produk"),
      controller: _idprodukTextboxCtr,
    );
  }

  _namaprodukTextfield() {
    return TextField(
      decoration: InputDecoration(labelText: "Nama Produk"),
      controller: _namaprodukTextboxCtr,
    );
  }

  _hargaTextfield() {
    return TextField(
      decoration: InputDecoration(labelText: "Harga Produk"),
      controller: _hargaTextboxCtr,
    );
  }

  _stokprodukTextfield() {
    return TextField(
      decoration: InputDecoration(labelText: "Stok"),
      controller: _stokprodukTextboxCtr,
    );
  }

  _sizeTextfield() {
    return TextField(
      decoration: InputDecoration(labelText: "Size"),
      controller: _sizeTextboxCtr,
    );
  }

  _keteranganTextfield() {
    return TextField(
      decoration: InputDecoration(labelText: "Keterangan"),
      controller: _keteranganTextboxCtr,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          KelolaProduk produk = KelolaProduk(
              idproduk: _idprodukTextboxCtr.text,
              namaproduk: _namaprodukTextboxCtr.text,
              harga: _hargaTextboxCtr.text,
              stokproduk: _stokprodukTextboxCtr.text,
              size: _sizeTextboxCtr.text,
              keterangan: _keteranganTextboxCtr.text);

          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => KelolaProdukDetail(produk: produk)));
        },
        child: const Text("Simpan"));
  }
}
