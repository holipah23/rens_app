import 'package:flutter/material.dart';
import '../../model/kelolaproduk.dart';
import '../../ui/kelolaproduk/kelolaproduk_item.dart';
import '../../ui/kelolaproduk/kelolaproduk_form.dart';

class KelolaProdukPage extends StatefulWidget {
  const KelolaProdukPage({super.key});

  @override
  State<KelolaProdukPage> createState() => _KelolaProdukPageState();
}

class _KelolaProdukPageState extends State<KelolaProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Produk"),
      ),
      body: ListView(
        children: [
          KelolaProdukItem(
            produk: KelolaProduk(
                idproduk: "20",
                namaproduk: "Kaos Jujutsu Kaisen",
                harga: "Rp 60.000",
                stokproduk: "80",
                size: "L dan XL",
                keterangan:
                    "Kaos New Jujutsu Kaisen Apparel (Produksi Mandiri). Bahan katun dengan serat halus, pola standard Asia tanpa jahitan samping (Built Up), nyaman dipakai, jahitan rantai pada bagian pundak. Kaos ini menyediakan dua pilihan bahan: Soft Tees - Ketebalan 30s, bahan kaos lebih tipisPremium Cotton - Ketebalan 24s."),
          ),
          KelolaProdukItem(
            produk: KelolaProduk(
                idproduk: "24",
                namaproduk: "Kaos Band Ratu Adil",
                harga: "Rp 175.000",
                stokproduk: "35",
                size: "S - XL",
                keterangan:
                    "Kaos Band .Feast Album ALI. Bahan katun dengan serat halus, pola standard Asia tanpa jahitan samping (Built Up), nyaman dipakai"),
          ),
          KelolaProdukItem(
            produk: KelolaProduk(
                idproduk: "22",
                namaproduk: "Hoodie Attack On Titan",
                harga: "Rp 100.000",
                stokproduk: "90",
                size: "All Size",
                keterangan:
                    "Hoodie Attack on Titan Survey Corps Apparel (Import). Bahan katun dengan serat halus, pola standard Asia tanpa jahitan samping (Built Up), nyaman dipakai"),
          ),
          KelolaProdukItem(
            produk: KelolaProduk(
                idproduk: "23",
                namaproduk: "Jaket Custom",
                harga: "Rp 100.000",
                stokproduk: "90",
                size: "All Size",
                keterangan:
                    "Jaket Custom dengan design bebas. Bahan katun dengan serat halus, pola standard Asia tanpa jahitan samping (Built Up), nyaman dipakai"),
          ),
          KelolaProdukItem(
            produk: KelolaProduk(
                idproduk: "25",
                namaproduk: "Kaos Band ACDC",
                harga: "Rp 150.000",
                stokproduk: "98",
                size: "S - XL",
                keterangan:
                    "Kaos Band ACDC Classic. Bahan katun dengan serat halus, pola standard Asia tanpa jahitan samping (Built Up), nyaman dipakai"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (contex) => const KelolaProdukForm()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
