// ignore_for_file: camel_case_types, must_be_immutable, non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'components/Button.dart';

class Point_Counter_App extends StatefulWidget {
  Point_Counter_App({super.key, this.TeamAName, this.TeamBName});
  String? TeamAName;
  String? TeamBName;
  @override
  State<Point_Counter_App> createState() => _Point_Counter_AppState();
}

class _Point_Counter_AppState extends State<Point_Counter_App> {
  int teamApoints = 0;
  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Basket Ball Point Counter')),
        backgroundColor: Colors.green,
      ),
      body: Column(children: [
        const Spacer(
          flex: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  widget.TeamAName ?? 'Default Value',
                  style: const TextStyle(fontSize: 32),
                ),
                Text(
                  '$teamApoints',
                  style: const TextStyle(fontSize: 110),
                ),
                Button(
                  color: const Color.fromARGB(255, 17, 114, 193),
                  ontap: () {
                    setState(() {
                      teamApoints = teamApoints + 1;
                    });
                  },
                  text: 'Add 1 Point',
                ),
                Button(
                  color: const Color.fromARGB(255, 17, 114, 193),
                  ontap: () {
                    setState(() {
                      teamApoints = teamApoints + 2;
                    });
                  },
                  text: 'Add 2 Point',
                ),
                Button(
                  color: const Color.fromARGB(255, 17, 114, 193),
                  ontap: () {
                    setState(() {
                      teamApoints = teamApoints + 3;
                    });
                  },
                  text: 'Add 3 Point',
                )
              ],
            ),
            const SizedBox(
                height: 450,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 1, // Adjust the thickness as needed
                )),
            Column(
              children: [
                Text(
                  widget.TeamBName ?? 'Default Value',
                  style: const TextStyle(fontSize: 32),
                ),
                Text(
                  '$teamBpoints',
                  style: const TextStyle(fontSize: 110),
                ),
                Button(
                  color: const Color.fromARGB(255, 235, 47, 33),
                  ontap: () {
                    setState(() {
                      teamBpoints = teamBpoints + 1;
                    });
                  },
                  text: 'Add 1 Point',
                ),
                Button(
                  color: const Color.fromARGB(255, 235, 47, 33),
                  ontap: () {
                    setState(() {
                      teamBpoints = teamBpoints + 2;
                    });
                  },
                  text: 'Add 2 Point',
                ),
                Button(
                  color: const Color.fromARGB(255, 235, 47, 33),
                  ontap: () {
                    setState(() {
                      teamBpoints = teamBpoints + 3;
                    });
                  },
                  text: 'Add 3 Point',
                )
              ],
            ),
          ],
        ),
        const Spacer(
          flex: 2,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              teamApoints = 0;
              teamBpoints = 0;
            });
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, fixedSize: const Size(180, 45)),
          child: const Text('Reset'),
        ),
        const Spacer(
          flex: 1,
        )
      ]),
    );
  }
}
