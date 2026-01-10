import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/finance_page.dart';
import 'pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
      ),
      home: const MainLayout(),
    );
  }
}

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int selectedIndex = 0;

  final List<Widget> pages = const [
    HomePage(),
    FinancePage(),
    SettingsPage(),
  ];

  void selectPage(int index) {
    setState(() {
      selectedIndex = index;
    });
    Navigator.of(context).pop(); // fecha o drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.indigo),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Meu App',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              selected: selectedIndex == 0,
              onTap: () => selectPage(0),
            ),
            ListTile(
              leading: const Icon(Icons.attach_money),
              title: const Text("Financeiro"),
              selected: selectedIndex == 1,
              onTap: () => selectPage(1),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Configurações"),
              selected: selectedIndex == 2,
              onTap: () => selectPage(2),
            ),
          ],
        ),
      ),
      body: pages[selectedIndex],
    );
  }
}
