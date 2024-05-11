import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_proj_home/pages/account.dart';
import 'package:flutter_proj_home/pages/add_charger_page.dart';
import 'package:flutter_proj_home/pages/add_vehicle_page.dart';
import 'package:flutter_proj_home/pages/alerts.dart';
import 'package:flutter_proj_home/pages/home.dart';
import 'package:flutter_proj_home/pages/reports.dart';
import 'package:flutter_proj_home/pages/schedule.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    Home(),
    Schedule(),
    Account(),
    Reports(),
    Alerts(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showPopupMenu(BuildContext context) async {
    final RenderBox overlay =
        Overlay.of(context)!.context.findRenderObject() as RenderBox;

    final RenderBox button = context.findRenderObject() as RenderBox;
    final Offset position =
        button.localToGlobal(Offset.zero, ancestor: overlay);

    final selected = await showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(50, 80, 10, 10),
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(15.0), // Adjust the radius as needed
      ),
      items: <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: 'add_household',
          child: ListTile(
            title: Container(
              width: 200,
              child: Text('Add a Household'),
            ),
          ),
        ),
        const PopupMenuDivider(), // Divider between menu items
        const PopupMenuItem<String>(
          value: 'add_charger',
          child: ListTile(
            title: Text('Add a Charger'),
          ),
        ),
        const PopupMenuDivider(), // Divider between menu items
        const PopupMenuItem<String>(
          value: 'add_dongle',
          child: ListTile(
            title: Text('Add a Dongle'),
          ),
        ),
        const PopupMenuDivider(), // Divider between menu items
        const PopupMenuItem<String>(
          value: 'help_support',
          child: ListTile(
            title: Text('Help/Support'),
            trailing: Icon(CupertinoIcons.link),
          ),
        ),
        const PopupMenuDivider(), // Divider between menu items
        const PopupMenuItem<String>(
          value: 'accessories',
          child: ListTile(
            title: Text('Accessories'),
            trailing: Icon(CupertinoIcons.link),
          ),
        ),
        const PopupMenuDivider(), // Divider between menu items
        const PopupMenuItem<String>(
          value: 'logout',
          child: ListTile(
            title: Text('Logout'),
          ),
        ),
      ],
    );

    if (selected != null) {
      // Handle menu item selection
      switch (selected) {
        case 'add_household':
          // Handle Add a Household action
          break;
        case 'add_charger':
          // Handle Add a Charger action
          break;
        case 'add_dongle':
          // Handle Add a Dongle action
          break;
        case 'help_support':
          // Handle Help/Support action
          break;
        case 'accessories':
          // Handle Accessories action
          break;
        case 'logout':
          // Handle Logout action
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cabin'),
        actions: [
          GestureDetector(
            onTap: () => _showPopupMenu(context),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: Colors.grey.withOpacity(0.9),
                ),
              ),
              child: Icon(Icons.more_horiz),
            ),
          ),
        ],
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.calendar), label: 'Schedule'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart), label: 'Reports'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Alerts'),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
