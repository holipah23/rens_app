import 'package:flutter/material.dart';
import 'package:rens_app/helpers/user_info.dart';
import 'package:rens_app/ui/beranda.dart';
import 'package:rens_app/ui/login.dart';
import 'package:rens_app/ui/pasien/pasien_page.dart';
import 'package:rens_app/ui/kelolaproduk/kelolaproduk_page.dart';
import 'package:rens_app/ui/kelolauser/kelolauser_page.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
              accountName: Text("Admin Ren's Fashion"),
              accountEmail: Text("admin@mail.com")),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Beranda"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Beranda()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text("Kelola User"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => KelolaUserPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text("Kelola Produk"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => KelolaProdukPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Keluar"),
            onTap: () {
              UserInfo().logout();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                  (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
