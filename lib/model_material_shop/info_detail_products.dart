import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccer_shop_web/screen/components/app_bar.dart';

import 'model_material_shop_provider.dart';

class InfoDetailProducts extends StatefulWidget {
  InfoDetailProducts({Key? key}) : super(key: key);
  static const routeName = '/product_detail';

  @override
  _InfoDetailProductsState createState() => _InfoDetailProductsState();
}

class _InfoDetailProductsState extends State<InfoDetailProducts> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final productId = ModalRoute.of(context)!.settings.arguments as String;//id
    final loadedProduct =  Provider.of<ModelMaterialShopProvider>(context, listen: false).findById(productId);
    // Provider.of<ProductProvider>(
    //   context,
    //   listen: false,
    // ).findById(productId);
    // ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/realm.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            CustomAppBar(
              witgets: IconButton(
                padding: EdgeInsets.only(right: 10),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
            Container(child: Image(image: AssetImage(loadedProduct.imageUrl)),),
            Text(loadedProduct.title),
          ],
        ),
      ),
    );
  }
}
