import 'package:flutter/material.dart';
import '../../model/kelolauser.dart';
import 'kelolauser_detail.dart';

class KelolaUserItem extends StatelessWidget {
  final KelolaUser user;

  const KelolaUserItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(
            user.namaUser,
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => KelolaUserDetail(user: user)));
      },
    );
  }
}
