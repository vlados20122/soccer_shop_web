import 'package:flutter/cupertino.dart';

import 'model_material_shop.dart';

class ModelMaterialShopProvider with ChangeNotifier{
  List<MaterialShop> _items = [
    MaterialShop(id: '1',
        title: 'T-shirt Ukr',
        description: 'Ukr t-Shtirt',
        price: 100,
        imageUrl: 'assets/images/t-shirt.jpg'),
    MaterialShop(id: '2',
        title: 'T-SSSSSHHHH',
        description: 'Ukr t-Shtirt',
        price: 1200,
        imageUrl: 'assets/images/nabor.jpeg'),
    MaterialShop(id: '3',
        title: 'WOW LOL',
        description: 'Ukr t-Shtirt',
        price: 1110,
        imageUrl: 'assets/images/t-shirt.jpg'),
    MaterialShop(id: '4',
        title: 'T-shirt Ukr',
        description: 'UkrLULL',
        price: 15,
        imageUrl: 'assets/images/t-shirt.jpg'),
    MaterialShop(id: '5',
        title: 'T-shirt Ukr',
        description: 'Ukr t-Shtirt',
        price: 100,
        imageUrl: 'assets/images/t-shirt.jpg'),
  ];

  List<MaterialShop> get items => _items;


  updateStudents({required List<MaterialShop> materialShop, bool notify = true}) {
    _items = materialShop;
    if (notify) notifyListeners();
  }

  addStudent({required MaterialShop materialShop}) {
    _items.add(materialShop);
    notifyListeners();
  }

  MaterialShop findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  setStudents() async {
    List<MaterialShop> items = [];
    updateStudents(materialShop: items);
  }
}