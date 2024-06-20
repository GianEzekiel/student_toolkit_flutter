import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Align (
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[ 
              Container(
              padding: const EdgeInsets.only(top: 10),
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  
                  const SizedBox(width: 15),
                  
                  ClipRRect( 
                    borderRadius: BorderRadius.circular(35),
                    child:  Container(
                      width: 90,
                      color: const Color(0xFF8EBBFF),
                      child: const Align(
                        alignment: Alignment.center,
                        child:  Column(
                          mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Sun'),
                              Text('01')
                            ]
                        )
                      )
                    ),
                  ),
                  
                  const SizedBox(width: 15),
                  
                  ClipRRect( 
                    borderRadius: BorderRadius.circular(35),
                    child: Container(
                      width: 90,
                      color: const Color(0xFF2D3652),
                    ),
                  ),
                  
                  const SizedBox(width: 15),
                  
                  ClipRRect( 
                    borderRadius: BorderRadius.circular(35),
                    child: Container(
                      width: 90,
                      color: const Color(0xFF2D3652),
                    ),
                  ),
                  
                  const SizedBox(width: 15),
                  
                  ClipRRect( 
                    borderRadius: BorderRadius.circular(35),
                    child: Container(
                      width: 90,
                      color: const Color(0xFF2D3652),
                    ),
                  ),

                  const SizedBox(width: 15),
                  
                  ClipRRect( 
                    borderRadius: BorderRadius.circular(35),
                    child: Container(
                      width: 90,
                      color: const Color(0xFF2D3652),
                    ),
                  ),

                  const SizedBox(width: 15),

                  ClipRRect( 
                    borderRadius: BorderRadius.circular(35),
                    child: Container(
                      width: 90,
                      color: const Color(0xFF2D3652),
                    ),
                  ),

                  const SizedBox(width: 15),

                  ClipRRect( 
                    borderRadius: BorderRadius.circular(35),
                    child: Container(
                      width: 90,
                      color: const Color(0xFF2D3652),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: const EdgeInsets.only(top: 35, bottom: 25),
                  child: const Text(
                    'List of Schedule For Today',
                    style:TextStyle(
                      fontSize: 16,
                      color:  Color(0xFFF4F5FC),
                    )
                  ),
                ),
              )
            ),
            Expanded(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.all(15),
                child: ListView(
                  children: const [
                    ListTile(
                      title: Text('Schedule 1'),
                      subtitle: Text('Details of Schedule 1'),
                      textColor: Color(0xFFF4F5FC),
                    ),
                    ListTile(
                      title: Text('Schedule 2'),
                      subtitle: Text('Details of Schedule 2'),
                      textColor: Color(0xFFF4F5FC),
                    ),
                    ListTile(
                      title: Text('Schedule 3'),
                      subtitle: Text('Details of Schedule 3'),
                      textColor: Color(0xFFF4F5FC),
                    ),
                    ListTile(
                      title: Text('Schedule 4'),
                      subtitle: Text('Details of Schedule 4'),
                      textColor: Color(0xFFF4F5FC),
                    ),
                    // Add more ListTile or any other widget here as needed
                  ],
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
