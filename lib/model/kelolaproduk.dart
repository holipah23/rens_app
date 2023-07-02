class KelolaProduk {
  String? id;
  String idproduk;
  String namaproduk;
  String harga;
  String stokproduk;
  String size;
  String keterangan;

  KelolaProduk(
      {this.id,
      required this.idproduk,
      required this.namaproduk,
      required this.harga,
      required this.stokproduk,
      required this.size,
      required this.keterangan});

  factory KelolaProduk.fromJson(Map<String, dynamic> json) => KelolaProduk(
      idproduk: json["id"],
      namaproduk: json["nama_produk"],
      harga: json['harga'],
      stokproduk: json['stok_produk'],
      size: json['size'],
      keterangan: json['keterangan']);

  Map<String, dynamic> toJson() => {
        "nama_produk": namaproduk,
        "harga": harga,
        "stok_produk": stokproduk,
        "size": size,
        "keterangan": keterangan
      };
}
