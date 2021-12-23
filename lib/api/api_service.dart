import 'dart:convert';
import 'package:capstone_project/model/materi.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String _baseUrl = 'https://csd137capstone.dapuluous.me/materi/';

  Future<Materi> getMateri() async {
    final response = await http.get(Uri.parse("$_baseUrl/getMateri.php"));
    if (response.statusCode == 200) {
      return Materi.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load top headlines');
    }
  }

  Future<Materi> getMateriLimit() async {
    final response = await http.get(Uri.parse("$_baseUrl/getMateriLimit.php"));
    if (response.statusCode == 200) {
      return Materi.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load top headlines');
    }
  }

  Future<Materi> getMateriSearch(String keywordSearch) async {
    final response = await http.get(Uri.parse("$_baseUrl/getMateriSearch.php?keyword=$keywordSearch"));
    if (response.statusCode == 200) {
      return Materi.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load top headlines');
    }
  }

  Future<http.Response> deleteMateri(String id) async {
    final http.Response response = await http.delete(
      Uri.parse("$_baseUrl/deleteMateri.php?id_materi=$id"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    return response;
  }
}