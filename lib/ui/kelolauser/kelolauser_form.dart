import 'package:flutter/material.dart';
import '../../model/kelolauser.dart';
import '../../service/kelolauser_service.dart';
import '../../ui/kelolauser/kelolauser_page.dart';

class KelolaUserForm extends StatefulWidget {
  const KelolaUserForm({Key? key}) : super(key: key);
  _KelolaUserFormState createState() => _KelolaUserFormState();
}

class _KelolaUserFormState extends State<KelolaUserForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaKelolaUserCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah User")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [_fieldNamaUser(), SizedBox(height: 20), _tombolSimpan()],
          ),
        ),
      ),
    );
  }

  _fieldNamaUser() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama User"),
      controller: _namaKelolaUserCtrl,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () async {
          KelolaUser user = new KelolaUser(namaUser: _namaKelolaUserCtrl.text);
          await KelolaUserService().simpan(user).then((value) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => KelolaUserPage()));
          });
        },
        child: const Text("Simpan"));
  }
}
