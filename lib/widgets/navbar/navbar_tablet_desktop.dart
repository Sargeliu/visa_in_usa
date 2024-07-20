import 'package:flutter/material.dart';
import 'navbar_item.dart';

class NavbarTabletDesktop extends StatelessWidget {
  const NavbarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 68,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavBarItem(title: 'ГЛАВНАЯ'),
          SizedBox(width: 112,),
          NavBarItem(title: 'СПИСОК ДОКУМЕНТОВ'),
          SizedBox(width: 112,),
          NavBarItem(title: 'СТОИМОСТЬ'),
          SizedBox(width: 112,),
          NavBarItem(title: 'ОТЗЫВЫ'),
          SizedBox(width: 112,),
          NavBarItem(title: 'СПИСОК СТРАН'),
          SizedBox(width: 112,),
          NavBarItem(title: 'КОНТАКТЫ'),
        ],
      ),
    );
  }
}
