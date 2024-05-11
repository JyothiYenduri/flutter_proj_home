import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // First Column
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Charger1',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 20),
                // Image.asset('assets/images/group162.png',height: 250,width: 250,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircularPercentIndicator(
                      radius: 50,
                      lineWidth: 5,
                      percent: 0.45,
                      progressColor: Colors.green[900],
                      backgroundColor: Color.fromARGB(255, 8, 247, 16),
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '45%',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '150 mi',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.directions_car,
                      size: 80,
                      color: Color.fromARGB(255, 8, 247, 16),
                    ),
                    // SizedBox(width: 10),
                    // Image.asset('images/frame164.png'),
                    // SizedBox(width: 10),

                    // Image.asset('assets/images/group162.png',height: 250,width: 250,),
                  ],
                ),
              ],
            ),

            // Second Column
            SizedBox(width: 20), // Add spacing between columns
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text('Charge Rate'),
                    subtitle: Text('34m/hr'),
                  ),
                  ListTile(
                    title: Text('Est. Charge Time'),
                    subtitle: Text('30 min'),
                  ),
                  ListTile(
                    title: Text('Est. Charge Cost'),
                    subtitle: Text('Rs.35.22'),
                  ),
                  ListTile(
                    title: Text('Complete By'),
                    subtitle: Text('2:35 PM'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
