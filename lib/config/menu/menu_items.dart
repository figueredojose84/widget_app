import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'botones',
    subTitle: 'varios botones',
    link: '/botones',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tajetas',
    subTitle: 'un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card_outlined,
  ),
];
