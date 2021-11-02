import 'package:flutter/material.dart';
import 'package:soccer_shop_web/screen/components/app_bar.dart';
import 'package:soccer_shop_web/screen/components/bottom_panel.dart';
import 'package:soccer_shop_web/screen/components/side_bar.dart';

import 'class_build/grid_view_build_class.dart';

class ShopScreenDetail extends StatefulWidget {
  const ShopScreenDetail({Key? key}) : super(key: key);

  @override
  _ShopScreenDetailState createState() => _ShopScreenDetailState();
}

class _ShopScreenDetailState extends State<ShopScreenDetail> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/realm.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(witgets: SizedBox(),),
              Container(
                height: size.height ,
                child: ListView(
                  children: [
                    Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              SideBar(),
                              Container(
                                height: size.height *1.3,
                                width: size.height * 1.345,
                                child: GridViewBuildClass(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              BottomPanel(),
            ],
          ),
        ),
      ),
    );
  }
}
