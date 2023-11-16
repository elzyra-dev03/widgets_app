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
      title: 'Botones',
      subTitle: 'Varios botones en flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un Contenedor Estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicators',
      subTitle: 'Generales y Controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.menu),
  MenuItem(
      title: 'Animated container',
      subTitle: 'stateful widget animado',
      link: '/animated-container',
      icon: Icons.check_box_outlined),
  MenuItem(
      title: 'UI Controls',
      subTitle: 'Serie de controles de flutter',
      link: '/ui-controls',
      icon: Icons.card_membership_rounded),
];
