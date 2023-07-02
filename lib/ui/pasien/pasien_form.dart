import 'package:flutter/material.dart';
import 'package:rens_app/model/Pasien.dart';
import 'package:rens_app/ui/pasien/pasien_detail.dart';

class PasienForm extends StatefulWidget {
  const PasienForm({super.key});

  @override
  State<PasienForm> createState() => _PasienFormState();
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPasienCtrl = TextEditingController();
  final _noRmCtrl = TextEditingController();
  final _tglLahir = TextEditingController();
  final _noTelp = TextEditingController();
  final _alamat = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Tambah Pasien")),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _fieldNoRm(),
                _fieldNamaPasien(),
                _fieldTglLahir(),
                _fieldNoTelp(),
                _fieldAlamat(),
                _tombolSimpan()
              ],
            ),
          ),
        ),
      ),
    );
  }

  _fieldNamaPasien() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Pasien"),
      controller: _namaPasienCtrl,
    );
  }

  _fieldNoRm() {
    return TextField(
      decoration: const InputDecoration(labelText: "No Ruangan"),
      controller: _noRmCtrl,
    );
  }

  _fieldTglLahir() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tanggal Lahir"),
      controller: _tglLahir,
    );
  }

  _fieldNoTelp() {
    return TextField(
      decoration: const InputDecoration(labelText: "No Telpon"),
      controller: _noTelp,
    );
  }

  _fieldAlamat() {
    return TextField(
      decoration: const InputDecoration(labelText: "Alamat"),
      controller: _alamat,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Pasien pasien = Pasien(
              noRm: _noRmCtrl.text,
              nama: _namaPasienCtrl.text,
              tglLahir: _tglLahir.text,
              noTelp: _noTelp.text,
              alamat: _alamat.text);
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PasienDetailWidget(pasien: pasien)));
        },
        child: const Text("Submit"));
  }
}
