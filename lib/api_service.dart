import 'dart:convert';

import 'package:betta_fish/model/keranjang_model.dart';
import 'package:betta_fish/model/popular_model.dart';
import 'package:betta_fish/model/rekomedasi_model.dart';
import 'package:betta_fish/model/search_model.dart';
import 'package:betta_fish/model/transaksi_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

String baseUrl = "http://192.168.5.220:5000";
Map<String, String> headers = {
  "Content-Type": "application/json",
  "Authorization": ""
};

class ApiService {
  Future search(String data) async {
    Uri url = Uri.parse("$baseUrl/barang/get?search=$data");
    SharedPreferences storage = await SharedPreferences.getInstance();
    headers["Authorization"] = "Bearer ${storage.getString("token")}";
    final res = await http.get(url, headers: headers);
    if (res.statusCode == 200) {
      return searchModelFromJson(res.body);
    } else {
      return false;
    }
  }
  Future getTransaksi() async {
    Uri url = Uri.parse("$baseUrl/transaksi/get");
    SharedPreferences storage = await SharedPreferences.getInstance();
    headers["Authorization"] = "Bearer ${storage.getString("token")}";
    final res = await http.get(url, headers: headers);
    if (res.statusCode == 200) {
      return transaksiFromJson(res.body);
    } else {
      return false;
    }
  }

  Future keranjang() async {
    Uri url = Uri.parse("$baseUrl/keranjang/get");
    SharedPreferences storage = await SharedPreferences.getInstance();
    headers["Authorization"] = "Bearer ${storage.getString("token")}";
    final res = await http.get(url, headers: headers);
    if (res.statusCode == 200) {
      return keranjangModelFromJson(res.body);
    } else {
      return false;
    }
  }

  Future transaksi(idBarang, pesananId) async {
    Uri url = Uri.parse("$baseUrl/transaksi/create/$idBarang");
    SharedPreferences storage = await SharedPreferences.getInstance();
    headers["Authorization"] = "Bearer ${storage.getString("token")}";
    final res = await http.post(url,
        body: jsonEncode({"pesanan_id": pesananId, "status_id": 1}),
        headers: headers);
    if (res.statusCode == 200) {
      print(res.statusCode);
      return true;
    } else {
      return false;
    }
  }

  Future pesan(int id, String alamat, int jumlah, int total) async {
    Uri url = Uri.parse("$baseUrl/pesanan/create/$id");
    SharedPreferences storage = await SharedPreferences.getInstance();
    headers["Authorization"] = "Bearer ${storage.getString("token")}";
    final res = await http.post(url,
        body: jsonEncode({"alamat": alamat, "jumlah": jumlah, "total": total}),
        headers: headers);
    if (res.statusCode == 200) {
      var data = jsonDecode(res.body)["value"];
      transaksi(data["barang_id"], data["id"]);
      print(res.statusCode);
      return true;
    } else {
      return false;
    }
  }

  Future addToCart(int id) async {
    Uri url = Uri.parse("$baseUrl/keranjang/add/$id");
    SharedPreferences storage = await SharedPreferences.getInstance();
    headers["Authorization"] = "Bearer ${storage.getString("token")}";
    final res =
        await http.post(url, body: jsonEncode({"total": 1}), headers: headers);
    if (res.statusCode == 200) {
      print(res.statusCode);
      return true;
    } else {
      return false;
    }
  }

  Future popular() async {
    Uri url = Uri.parse("$baseUrl/barang/popular");
    SharedPreferences storage = await SharedPreferences.getInstance();
    headers["Authorization"] = "Bearer ${storage.getString("token")}";
    final res = await http.get(url, headers: headers);
    if (res.statusCode == 200) {
      return popularFromJson(res.body);
    } else {
      return false;
    }
  }

  Future rekomendasi() async {
    Uri url = Uri.parse("$baseUrl/barang/rekomendasi");
    SharedPreferences storage = await SharedPreferences.getInstance();
    headers["Authorization"] = "Bearer ${storage.getString("token")}";
    final res = await http.get(url, headers: headers);
    if (res.statusCode == 200) {
      return rekomendasiFromJson(res.body);
    } else {
      return false;
    }
  }
}
