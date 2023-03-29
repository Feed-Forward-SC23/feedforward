import 'dart:convert';

import 'package:feedforward/services/productService/product_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

class ProductApi {
  String baseUrl = 'https://fakestoreapi.com/';

  Future<List<Product>> fetchProduct() async {
    Response response = await get(Uri.parse('${baseUrl}products'));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      debugPrint(result.map((e) => Product.fromJson(e)).toList().toString());
      return result.map((e) => Product.fromJson(e)).toList();
    } else {
      debugPrint(response.reasonPhrase);
      throw Exception("${response.reasonPhrase}xdxd");
    }
  }

  Future<Product> writeProduct(Product) async {
    

    throw "Hello";
  }
}

final apiProvider = Provider((ref) => ProductApi());
final productListProvider = FutureProvider((ref) async {
  return ref.read(apiProvider).fetchProduct();
});
