import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Blue Shorts',
      description: 'adidas Originals California Swim Shorts',
      price: 29.99,
      imageUrl:
          'https://i8.amplience.net/i/jpl/jd_521060_c?qlt=92&w=950&h=1212&v=1&fmt=auto',
    ),
    Product(
        id: 'p2',
        title: 'rose ,Shorts',
        description: 'adidas Originals California Swim Shorts.',
        price: 59.99,
        imageUrl:
            'https://i8.amplience.net/i/jpl/jd_597138_d?qlt=92&w=950&h=1212&v=1&fmt=auto'),
    Product(
      id: 'p3',
      title: 'Gloves',
      description: 'Nike Training Fitness Gloves.',
      price: 19.99,
      imageUrl:
          'https://i8.amplience.net/i/jpl/jd_158971_a?qlt=92&w=950&h=1212&v=1&fmt=auto',
    ),
    Product(
        id: 'p4',
        title: 'Casquettes',
        description: 'Lacoste Nylon Cap.',
        price: 47.99,
        imageUrl:
            'https://i8.amplience.net/i/jpl/jd_179067_b?qlt=92&w=950&h=1212&v=1&fmt=auto'),
    Product(
        id: 'p5',
        title: 'A Polo',
        description: 'BOSS Paddy Polo Shirt.',
        price: 49.99,
        imageUrl:
            'https://i8.amplience.net/i/jpl/jd_574214_c?qlt=92&w=950&h=1212&v=1&fmt=auto'),
    Product(
        id: 'p6',
        title: 'A polo',
        description: 'BOSS Paddy Polo Shirt.',
        price: 22.99,
        imageUrl:
            'https://i8.amplience.net/i/jpl/jd_609321_b?qlt=92&w=950&h=1212&v=1&fmt=auto'),
    Product(
        id: 'p7',
        title: 'Hoddies',
        description: 'adidas Originals Trefoil Essential Fleece Hoodie.',
        price: 39.99,
        imageUrl:
            'https://i8.amplience.net/i/jpl/jd_578551_a?qlt=92&w=950&h=1212&v=1&fmt=auto'),
    Product(
      id: 'p8',
      title: 'A Hoddies',
      description: 'adidas Originals Trefoil Essential Fleece Hoodie.',
      price: 41.99,
      imageUrl:
          'https://i8.amplience.net/i/jpl/jd_578566_b?qlt=92&w=950&h=1212&v=1&fmt=auto',
    ),
    Product(
        id: 'p9',
        title: 'Gazelle',
        description: 'adidas Originals Gazelle.',
        price: 79.99,
        imageUrl:
            'https://i8.amplience.net/i/jpl/jd_066498_a?qlt=92&w=950&h=673&v=1&fmt=auto'),
    Product(
      id: 'p10',
      title: 'Adidasr',
      description: 'adidas Originals Gazelle.',
      price: 39.99,
      imageUrl:
          'https://i8.amplience.net/t/jpl/jd_product_list?plu=jd_020680_bl&qlt=85&qlt=92&w=726&h=726&v=1&fmt=auto',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  // var _showFavouriteOnly = false;

  List<Product> get favouriteItem {
    return _items.where((element) => element.isFavourite).toList();
  }

  Product findById(String id) =>
      _items.firstWhere((element) => element.id == id);

  void addProduct(Product product) {
    final newProduct = Product(
        id: DateTime.now().toString(),
        title: product.title,
        description: product.description,
        price: product.price,
        imageUrl: product.imageUrl);
    _items.add(newProduct);
    notifyListeners();
  }

  void updateProduct(String id, Product newProduct) {
    final prodIndex = _items.indexWhere((element) => element.id == id);
    if (prodIndex >= 0) {
      _items[prodIndex] = newProduct;
      notifyListeners();
    } else {
      //print('...');
    }
  }

  void deleteProduct(String id) {
    _items.removeWhere((element) => element.id == id);
    notifyListeners();
  }
}
