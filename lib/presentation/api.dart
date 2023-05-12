import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<dynamic>> getBranches() async {
  final response =
      await http.get(Uri.parse('http://192.168.93.142:8000/api/branch/'));
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load branches');
  }
}

Future<List<dynamic>> getSubjects() async {
  final response =
      await http.get(Uri.parse('http://192.168.93.142:8000/api/subject/'));
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load subjects');
  }
}

Future<List<dynamic>> getSections() async {
  final response =
      await http.get(Uri.parse('http://192.168.93.142:8000/api/section/'));
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load sections');
  }
}
