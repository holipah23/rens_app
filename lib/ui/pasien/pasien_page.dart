import 'package:flutter/material.dart';
import 'package:rens_app/model/Pasien.dart';
import 'package:rens_app/ui/pasien/pasien_form.dart';
import 'package:rens_app/ui/pasien/pasien_item.dart';

class PasienPageWidget extends StatefulWidget {
  const PasienPageWidget({super.key});

  @override
  State<PasienPageWidget> createState() => _PasienPageWidgetState();
}

class _PasienPageWidgetState extends State<PasienPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pasien"),
      ),
      body: ListView(
        children: [
          PasienItem(
              pasien: Pasien(
                  id: '1',
                  noRm: "1",
                  nama: "Suryadi",
                  tglLahir: "2001-01-23",
                  noTelp: "0856748972",
                  alamat: "Jl. Kalibata")),
          PasienItem(
              pasien: Pasien(
                  id: '2',
                  noRm: "2",
                  nama: "Slamet",
                  tglLahir: "2002-05-3",
                  noTelp: "034671234972",
                  alamat: "Jl. Fatmawati")),
          PasienItem(
              pasien: Pasien(
                  id: '3',
                  noRm: "1",
                  nama: "Roy",
                  tglLahir: "2003-02-13",
                  noTelp: "0856238972",
                  alamat: "Jl. Slipi")),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const PasienForm()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
