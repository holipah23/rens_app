import 'package:flutter/material.dart';
import 'package:rens_app/ui/pasien/pasien_update.dart';
import '../../model/Pasien.dart';

class PasienDetailWidget extends StatefulWidget {
  final Pasien pasien;

  const PasienDetailWidget({super.key, required this.pasien});

  @override
  State<PasienDetailWidget> createState() => _PasienDetailWidgetState();
}

class _PasienDetailWidgetState extends State<PasienDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pasien Detail"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Nama Pasien : ${widget.pasien.nama}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Tanggal Lahir Pasien : ${widget.pasien.tglLahir}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Alamat Pasien : ${widget.pasien.alamat}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "No. Telp Pasien : ${widget.pasien.noTelp}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [_tombolUbah(), _tombolHapus()],
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
                  builder: (context) => PasienUpdate(pasien: widget.pasien)));
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: Text("Ubah"));
  }

  _tombolHapus() {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: Text("Hapus"));
  }
}
