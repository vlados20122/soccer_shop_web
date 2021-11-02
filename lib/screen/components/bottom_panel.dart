import 'package:flutter/material.dart';

class BottomPanel extends StatefulWidget {
  BottomPanel({Key? key}) : super(key: key);

  @override
  State<BottomPanel> createState() => _BottomPanelState();
}

class _BottomPanelState extends State<BottomPanel> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: EdgeInsets.only(top: 100),
      height: size.height / 15,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly  ,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.arrow_forward_ios),
          Icon(Icons.info_outline_sharp),
          Icon(Icons.transfer_within_a_station_rounded),
          Icon(Icons.title),
        ],
      ),
    );
  }
}

/*/*Container(
      padding:  EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0x681C4B06),
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.9),
          ),
        ],
      ),
      child:  Row(
        children: [
          // Image.asset(
          //   "assets/images/logo.png",
          //   height: 25,
          //   alignment: Alignment.topCenter,
          // ),
          const SizedBox(width: 25),
          InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/shop');
              },
              splashColor: Colors.black,
              child: SvgPicture.asset(
                'assets/svg/logosoccer.svg',
                color: kTextcolor,
                height: 30,
              )),
          const SizedBox(width: 5),
          // Text(
          //   'Shop for you'.toUpperCase(),
          //   style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          // ),
          const Spacer(),
          // InkWell(
          //   onTap: () {
          //     setState(() {
          //       Navigator.pushReplacementNamed(context, '/global');
          //     });
          //   },
          //   child: Text(
          //     'Головна сторінка'.toUpperCase(),
          //     style: TextStyle(),
          //   ),
          // ),
          MenuItem(
              title: 'Головне меню',
              press: () {
                Navigator.popAndPushNamed(context, '/global');
              }),
          MenuItem(
              title: 'Мазагин',
              press: () {
                Navigator.pushNamed(context, '/shop');
              }),
          MenuItem(title: "Знижки", press: () {}),
          MenuItem(
              title: "Контакти",
              press: () {
                Navigator.pushNamed(context, '/contact');
              }),
          MenuItem(title: "Залогінитися", press: () {}),
          InkWell(
            onTap: () {},
            child: const Text(
              'Зареєструватися',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );*/*/
