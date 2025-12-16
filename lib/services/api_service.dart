import 'dart:convert';
import 'package:amora_client/dto/basket_dto.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'http://localhost:8080';

  Future<List<BasketDto>> fetchBaskets() async {
    final response = await http.get(Uri.parse('$baseUrl/baskets'));
    if (response.statusCode == 200) {
      final List<dynamic> body = jsonDecode(response.body);
      return body.map((item) => BasketDto.fromJson(item)).toList();
    } else {
      throw Exception('Falha ao carregar');
    }
  }

  Future<BasketDto> detailBasket(String id) async {
    final response = await http.get(Uri.parse('$baseUrl/baskets/$id'));
    if (response.statusCode == 200) {
      final dynamic body = jsonDecode(response.body);
      return BasketDto.fromJson(body);
    } else {
      throw Exception('Falha ao carregar');
    }
  }
}
