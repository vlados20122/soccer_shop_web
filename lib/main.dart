import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:soccer_shop_web/model_material_shop/model_material_shop_provider.dart';
import 'package:soccer_shop_web/screen/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) {
    runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider<ModelMaterialShopProvider>(
            create: (_) => ModelMaterialShopProvider()),
      ],
      child: MyApp(),
    ));
  });
}
