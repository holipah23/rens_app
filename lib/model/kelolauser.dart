class KelolaUser {
  String? id;
  String namaUser;

  KelolaUser({this.id, required this.namaUser});

  factory KelolaUser.fromJson(Map<String, dynamic> json) =>
      KelolaUser(id: json["id"], namaUser: json["nama_user"]);

  Map<String, dynamic> toJson() => {"nama_user": namaUser};
}
