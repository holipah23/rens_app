import 'package:flutter/material.dart';
import 'package:rens_app/ui/widget/sidebar.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(title: Text("Admin Ren's Fashion")),
      body: Container(
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Image.asset(
                  //"assets/img/logo.png",
                  //height: 150,
                  //width: 150,
                  //),
                  Icon(
                    Icons.people,
                    size: 100,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 8),
                    alignment: Alignment.centerLeft,
                    child: Text("Jumlah User Aktif",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        )),
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Icon(
                    Icons.shopping_cart,
                    size: 80,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 8),
                    alignment: Alignment.centerLeft,
                    child: Text("Orderan Masuk",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),

        //child: Column(
        //children: [
        //InkWell(
        //onTap: () {},
        //child: Container(
        //margin: EdgeInsets.all(10),
        //child: FlutterLogo(),
        //height: 120,
        //width: 120,
        //),
        //),
        //Container(
        //padding: EdgeInsets.only(bottom: 8),
        //alignment: Alignment.center,
        //child: Text(
        //"Jumlah User Aktif",
        //style: TextStyle(
        //fontSize: 18,
        //color: Colors.black,
        //fontWeight: FontWeight.bold),
        //),
        //)
        //],
        //),
      ),
    );
  }
}
