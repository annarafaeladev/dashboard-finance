import 'package:flutter/material.dart';
import '../models/nav_item.dart';
import '../models/page_item.dart';
import '../pages/home_page.dart';
import '../pages/finance_page.dart';
import '../pages/finance_fixed_page.dart';
import '../pages/credit_card_page.dart';
import '../pages/settings_page.dart';

const appNavItems = [
  NavItem(
    pageItem: PageItem(
      appBarTitle: "Inicio",
      page: HomePage(),
      bottomBarTitle: "Inicio",
    ),
    icon: Icons.home_outlined,
    selectedIcon: Icons.home,
  ),
  NavItem(
    pageItem: PageItem(
      appBarTitle: "Entradas",
      page: FinancePage(),
      bottomBarTitle: "Entradas",
    ),

    icon: Icons.trending_up_outlined,
    selectedIcon: Icons.trending_up,
  ),
  NavItem(
    pageItem: PageItem(
      appBarTitle: "Contas fixas",
      page: FinanceFixedPage(),
      bottomBarTitle: "Saída Fixa",
    ),

    icon: Icons.trending_down_outlined,
    selectedIcon: Icons.trending_down,
  ),
  NavItem(
    pageItem: PageItem(
      appBarTitle: "Cartão",
      page: CreditCardPage(),
      bottomBarTitle: "Cartão",
    ),

    icon: Icons.credit_card_outlined,
    selectedIcon: Icons.credit_card,
  ),
  NavItem(
    pageItem: PageItem(
      appBarTitle: "Configurações",
      page: SettingsPage(),
      bottomBarTitle: "Confg",
    ),
    icon: Icons.settings_outlined,
    selectedIcon: Icons.settings,
  ),
];
