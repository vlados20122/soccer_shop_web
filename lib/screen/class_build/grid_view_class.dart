import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewClass extends StatelessWidget {
  const GridViewClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 1.5,
      height: size.height,
      child: GridView.count(
        crossAxisCount: 4,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: const Text(
                    'Весь асортимент',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              InkWell(
                focusColor: Colors.red,
                onTap: () {
                  Navigator.of(context).pushNamed('/shop_detail');
                },
                splashColor: Colors.black,
              ),
            ],
          ),//all
          Stack(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Футболки',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('assets/images/t-shirt.jpg'),
                      fit: BoxFit.fill),
                ),
              ),
              InkWell(
                focusColor: Colors.red,
                onTap: () {
                },
                splashColor: Colors.black,
              ),
            ],
          ),//Futbolka
          Stack(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Шорти',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('assets/images/short.jpg'),
                      fit: BoxFit.fill),
                ),
              ),
              InkWell(
                focusColor: Colors.red,
                onTap: () {
                },
                splashColor: Colors.black,
              ),
            ],
          ),//horti
          Stack(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Гетри',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('assets/images/hetru.jpeg'),
                      fit: BoxFit.fill),
                ),
              ),
              InkWell(
                focusColor: Colors.red,
                onTap: () {
                  Navigator.pop(context);
                },
                splashColor: Colors.black,
              ),
            ],
          ),// hetru
          Stack(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Кофти',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('assets/images/kofta.jpeg'),
                      fit: BoxFit.fill),
                ),
              ),
              InkWell(
                focusColor: Colors.red,
                onTap: () {
                  Navigator.pop(context);
                },
                splashColor: Colors.black,
              ),
            ],
          ), // koftu
          Stack(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Штани',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('assets/images/htanu.jpeg'),
                      fit: BoxFit.fill),
                ),
              ),
              InkWell(
                focusColor: Colors.red,
                onTap: () {
                  Navigator.pop(context);
                },
                splashColor: Colors.black,
              ),
            ],
          ),// htanu
          Stack(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Куртка',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('assets/images/Kurtka.png'),
                      fit: BoxFit.cover),
                ),
              ),
              InkWell(
                focusColor: Colors.red,
                onTap: () {
                  Navigator.pop(context);
                },
                splashColor: Colors.black,
              ),
            ],
          ),//kyrtka
          Stack(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Бутси',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('assets/images/butsy.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              InkWell(
                focusColor: Colors.red,
                onTap: () {
                  Navigator.pop(context);
                },
                splashColor: Colors.black,
              ),
            ],
          ),// bytsu
          Stack(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  '''Мя'ч''',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('assets/images/miach.jpeg'),
                      fit: BoxFit.fill),
                ),
              ),
              InkWell(
                focusColor: Colors.red,
                onTap: () {
                  Navigator.pop(context);
                },
                splashColor: Colors.black,
              ),
            ],
          ),//miach
          Stack(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Набор футболіста',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('assets/images/nabor.jpeg'),
                      fit: BoxFit.fill),
                ),
              ),
              InkWell(
                focusColor: Colors.red,
                onTap: () {
                  Navigator.pop(context);
                },
                splashColor: Colors.black,
              ),
            ],
          ),//nabor futobiluista
        ],
      ),
    );
  }
}
