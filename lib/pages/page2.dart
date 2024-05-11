import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_proj_home/pages/add_charger_page.dart';
import 'package:flutter_proj_home/pages/add_vehicle_page.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: GestureDetector(
                onTap: () {
                  // Handle Add Charger action
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddCharger(),
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.add_circled,
                      size: 100,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10),
                    Text('Add'),
                    Text('Charger'),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: GestureDetector(
                onTap: () {
                  // Handle Add Vehicle action
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddVehicle(),
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.add_circled,
                      size: 60,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10),
                    Text('Add'),
                    Text('Vehicle'),
                  ],
                ),
              ),
            ),
          ),
          // Center(
          //     child: _pages.elementAt(_selectedIndex),
          //   ),
        ],
      ),
    );
  }
}
