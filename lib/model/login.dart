import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

//CekValue LoginState
getLoginState() async {
  final SharedPreferences gpref = await SharedPreferences.getInstance();
  return gpref.getString('logstat');
}

//SetValue LoginState
Future<void> setLoginState(logvalue) async {
  final SharedPreferences spref = await SharedPreferences.getInstance();
  spref.setString('logstat', logvalue);
}

//Remove all SharedPreferences
void unsetLogin() async {
  SharedPreferences upref = await SharedPreferences.getInstance();
  await upref.clear();
}

//FETCHDATA LOGIN
//FetchData
Future<Data> fetchData() async {
  final response = await http.get(Uri.parse(passid(1)));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response, then parse the JSON.
    return Data.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response, then throw an exception.
    throw Exception('Failed to load data');
  }
}

String passid(int pid) {
  return "https://rozche.my.id/app/get.php?id=$pid";
}

class Data {
  final String id;
  final String nama;
  final String alamat;

  Data({
    required this.id,
    required this.nama,
    required this.alamat,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      nama: json['nama'],
      alamat: json['alamat'],
    );
  }
}

//FetchData