import 'dart:convert';
import 'dart:io';

import 'package:feedforward/pages/main_page.dart';
import 'package:feedforward/services/productService/product_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

class LocalStorageService {
  Future<String> get _localPath async {
    final directory = await getLibraryDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/productData.json');
  }

  Future<List<Product>> readProduct() async {
    final file = await _localFile;
    final fileStr = await file.readAsString(encoding: utf8);
    return productFromJson(fileStr);
  }

  // Future<Product> writeProduct(product) async {
  //   final file = await _localFile;
  //   final productList = file.readAsStringSync();
  //   productList.add(product);
  //   file.writeAsString(
  //     productToJson(productList),
  //   );
  // }
}

final productLocalProvider = Provider((ref) => LocalStorageService());
final localProductList = FutureProvider((ref) {
  return ref.read(productLocalProvider).readProduct();
});
