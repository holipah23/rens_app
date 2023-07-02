import 'package:flutter/material.dart';
import '../../model/kelolauser.dart';
import '../../service/kelolauser_service.dart';
import 'kelolauser_form.dart';
import 'kelolauser_item.dart';
import '../widget/sidebar.dart';

class KelolaUserPage extends StatefulWidget {
  const KelolaUserPage({Key? key}) : super(key: key);
  _KelolaUserPageState createState() => _KelolaUserPageState();
}

class _KelolaUserPageState extends State<KelolaUserPage> {
  Stream<List<KelolaUser>> getList() async* {
    List<KelolaUser> data = await KelolaUserService().listData();
    yield data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: const Text("Data User"),
      ),
      body: StreamBuilder(
        stream: getList(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          if (snapshot.connectionState != ConnectionState.done) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (!snapshot.hasData &&
              snapshot.connectionState == ConnectionState.done) {
            return Text('Data Kosong');
          }

          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return KelolaUserItem(user: snapshot.data[index]);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const KelolaUserForm()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
