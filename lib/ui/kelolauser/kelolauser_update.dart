import 'package:flutter/material.dart';
import '../../model/kelolauser.dart';
import '../../service/kelolauser_service.dart';
import '../../ui/kelolauser/kelolauser_page.dart';
import 'kelolauser_detail.dart';

class KelolaUserUpdateForm extends StatefulWidget {
  final KelolaUser user;

  const KelolaUserUpdateForm({Key? key, required this.user}) : super(key: key);
  _KelolaUserUpdateFormState createState() => _KelolaUserUpdateFormState();
}

class _KelolaUserUpdateFormState extends State<KelolaUserUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaKelolaUserCtrl = TextEditingController();
  Future<KelolaUser> getData() async {
    KelolaUser data =
        await KelolaUserService().getById(widget.user.id.toString());
    setState(() {
      _namaKelolaUserCtrl.text = data.namaUser;
    });
    return data;
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah User")),
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
          String id = widget.user.id.toString();
          await KelolaUserService().ubah(user, id).then((value) {
            Navigator.pop(context);
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => KelolaUserPage()));
          });
        },
        child: const Text("Simpan Perubahan"));
  }
}
