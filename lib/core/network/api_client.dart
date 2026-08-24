import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiClient {
  final http.Client client;
  final String baseUrl;

  ApiClient({required this.client, required this.baseUrl});

  Future<dynamic> get(String endpoint) async {
    final response = await client.get(Uri.parse('$baseUrl$endpoint'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data from $endpoint');
    }
  }

  Future<dynamic> post(String endpoint, Map<String, dynamic> body) async {
    final response = await client.post(
      Uri.parse('$baseUrl$endpoint'),
      body: body,
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data from $endpoint');
    }
  }
}
