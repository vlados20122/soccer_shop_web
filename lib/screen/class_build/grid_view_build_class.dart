import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccer_shop_web/model_material_shop/info_detail_products.dart';
import 'package:soccer_shop_web/model_material_shop/model_material_shop.dart';
import 'package:soccer_shop_web/model_material_shop/model_material_shop_provider.dart';

class GridViewBuildClass extends StatefulWidget {
  const GridViewBuildClass({Key? key}) : super(key: key);

  @override
  _GridViewBuildClassState createState() => _GridViewBuildClassState();
}

class _GridViewBuildClassState extends State<GridViewBuildClass> {
  @override
  Widget build(BuildContext context) {
    // final list = <MaterialShop>[
    //   MaterialShop(
    //       id: 1,
    //       title: 'T-shirt Ukr',
    //       description: 'Ukr t-Shtirt',
    //       price: 100,
    //       imageUrl: 'assets/images/t-shirt.jpg'),
    //   MaterialShop(
    //       id: 2,
    //       title: 'T-shirt Ukr',
    //       description: 'Ukr t-Shtirt',
    //       price: 100,
    //       imageUrl: 'assets/images/t-shirt.jpg'),
    //   MaterialShop(
    //       id: 3,
    //       title: 'T-shirt Ukr',
    //       description: 'Ukr t-Shtirt',
    //       price: 100,
    //       imageUrl: 'assets/images/t-shirt.jpg'),
    //   MaterialShop(
    //       id: 4,
    //       title: 'T-shirt Ukr',
    //       description: 'Ukr t-Shtirt',
    //       price: 100,
    //       imageUrl: 'assets/images/t-shirt.jpg'),
    //   MaterialShop(
    //       id: 5,
    //       title: 'T-shirt Ukr',
    //       description: 'Ukr t-Shtirt',
    //       price: 100,
    //       imageUrl: 'assets/images/t-shirt.jpg'),
    //   MaterialShop(
    //       id: 6,
    //       title: 'T-shirt Ukr',
    //       description: 'Ukr t-Shtirt',
    //       price: 100,
    //       imageUrl: 'assets/images/t-shirt.jpg'),
    //   MaterialShop(
    //       id: 7,
    //       title: 'T-shirt Ukr',
    //       description: 'Ukr t-Shtirt',
    //       price: 100,
    //       imageUrl: 'assets/images/t-shirt.jpg'),
    //   MaterialShop(
    //       id: 8,
    //       title: 'T-shirt Ukr',
    //       description: 'Ukr t-Shtirt',
    //       price: 100,
    //       imageUrl: 'assets/images/t-shirt.jpg'),
    //   MaterialShop(
    //       id: 9,
    //       title: 'T-shirt Ukr',
    //       description: 'Ukr t-Shtirt',
    //       price: 100,
    //       imageUrl: 'assets/images/t-shirt.jpg'),
    //   MaterialShop(
    //       id: 10,
    //       title: 'T-shirt Ukr',
    //       description: 'Ukr t-Shtirt',
    //       price: 100,
    //       imageUrl: 'assets/images/t-shirt.jpg'),
    //   MaterialShop(
    //       id: 11,
    //       title: 'T-shirt Ukr',
    //       description: 'Ukr t-Shtirt',
    //       price: 100,
    //       imageUrl: 'assets/images/t-shirt.jpg'),
    //   MaterialShop(
    //       id: 12,
    //       title: 'T-shirt Ukr',
    //       description: 'Ukr t-Shtirt',
    //       price: 100,
    //       imageUrl: 'assets/images/t-shirt.jpg'),
    //   MaterialShop(
    //       id: 13,
    //       title: 'T-shirt Ukr',
    //       description: 'Ukr t-Shtirt',
    //       price: 100,
    //       imageUrl: 'assets/images/t-shirt.jpg'),
    //   MaterialShop(
    //       id: 14,
    //       title: 'T-shirt Ukr',
    //       description: 'Ukr t-Shtirt',
    //       price: 100,
    //       imageUrl: 'assets/images/t-shirt.jpg'),
    //   MaterialShop(
    //       id: 16,
    //       title: 'T-shirt Ukr',
    //       description: 'Ukr t-Shtirt',
    //       price: 100,
    //       imageUrl: 'assets/images/t-shirt.jpg'),
    // ];
    // final List<Map> myProducts = List.generate(
    //     100000,
    //     (index) => {
    //           "id": index,
    //           "name": "Product $index",
    //           'image': 'assets/images/butsy.jpg'
    //         }).toList();
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 1.5,
      height: size.height,
      padding: EdgeInsets.all(20),
      child: Consumer<ModelMaterialShopProvider>(
          builder: (context, _provider, child) {
        return StreamBuilder<ModelMaterialShopProvider>(
          stream: null,
          builder: (context, snapshot) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 350,
                  mainAxisExtent: 350,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: _provider.items.length,
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      '/product_detail',
                      arguments: _provider.items[i].id,
                    );
                  },
                  child: Stack(
                    children: [
                      Card(
                          elevation: 5,
                          shape: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 80, color: Colors.white.withOpacity(0.7)),
                              borderRadius: BorderRadius.circular(15)),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage(_provider.items[i].imageUrl),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          color: Colors.transparent),
                      Container(
                        height: size.height,
                        padding: EdgeInsets.all(5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              icon: Icon(Icons.shopping_cart),
                              onPressed: () {},
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text('${_provider.items[i].title}',style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text('${_provider.items[i].price} \$'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        );
      }),
    );
  }
}
