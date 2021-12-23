import 'dart:convert';

Materi materiFromJson(String str) => Materi.fromJson(json.decode(str));
String materiToJson(Materi data) => json.encode(data.toJson());
String DatumToJson(Datum data) => json.encode(data.toJson());

class Materi {
  Materi({
    required this.status,
    required this.message,
    required this.total,
    required this.data,
  });

  int status;
  String message;
  String total;
  List<Datum> data;

  factory Materi.fromJson(Map<String, dynamic> json) => Materi(
    status: json["status"],
    message: json["message"],
    total: json["total"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "total": total,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    required this.idMateri,
    required this.judulMateri,
    required this.linkMateri,
    required this.idUser,
    required this.idKategori,
  });

  String idMateri;
  String judulMateri;
  String linkMateri;
  String idUser;
  String idKategori;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    idMateri: json["id_materi"],
    judulMateri: json["judul_materi"],
    linkMateri: json["link_materi"],
    idUser: json["id_user"],
    idKategori: json["id_kategori"],
  );

  Map<String, dynamic> toJson() => {
    "id_materi": idMateri,
    "judul_materi": judulMateri,
    "link_materi": linkMateri,
    "id_user": idUser,
    "id_kategori": idKategori,
  };
}