import 'package:flutter/material.dart';
import 'package:student_toolkit/pages/log_in.dart';
import 'package:student_toolkit/pages/schedule.dart';
import 'package:student_toolkit/pages/todo_page.dart';
import 'package:student_toolkit/pages/budget.dart';
import 'package:student_toolkit/pages/profile.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  int _selectedPage = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Schedule(),
    ToDo(),
    Budget(),
    Profile(),
  ];

  static const List<String> _titles = <String>[
    'HomePage',
    'ToDo',
    'Budget',
    'Profile',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF24293E),
        title: Text(_titles[_selectedPage]),
        titleTextStyle: const TextStyle(
          color: Color(0xFFF4F5FC),
          fontSize: 20,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LogInPage()));
            },
          ),
        ],
      ),
      body: Container(
        color: const Color(0xFF24293E),
        child: _widgetOptions.elementAt(_selectedPage),
      ),
      bottomNavigationBar: Container(
        color: const Color(0xFF24293E),
        child: Padding(
          padding:
              const EdgeInsets.all(30),
          child: GNav(
            rippleColor: const Color(0xFF8EBBFF),
            hoverColor: const Color(0xFF8EBBFF),
            haptic: true,
            duration: const Duration(milliseconds: 900),
            color: const Color(0xFF2D3652),
            activeColor: const Color(0xFF8EBBFF),
            padding:
                const EdgeInsets.all(10),
            tabs: const [
              GButton(
                icon: Icons.home,
              ),
              GButton(
                icon: Icons.assignment,
              ),
              GButton(
                icon: Icons.account_balance_wallet_rounded,
              ),
              GButton(
                icon: Icons.account_circle,
              ),
            ],
            selectedIndex: _selectedPage,
            onTabChange: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
