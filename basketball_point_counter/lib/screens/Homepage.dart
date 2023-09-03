// ignore_for_file: file_names

import 'package:basketball_point_counter/screens/Points_counterPage.dart';
import 'package:basketball_point_counter/screens/components/Button.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final textController = TextEditingController();
  final textController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Center(child: Text('Basket Ball Point Counter')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: double.infinity,
              child: TextField(
                controller: textController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Team A name',
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: TextField(
                controller: textController2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Team B name',
                ),
              ),
            ),
            Button(
              color: Colors.green,
              text: 'Continue',
              ontap: () {
                if (textController.text.isNotEmpty &&
                    textController2.text.isNotEmpty) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Point_Counter_App(
                      TeamAName: textController.text,
                      TeamBName: textController2.text,
                    );
                  }));
                } else {
                  const snackBar = SnackBar(
                    content: Text('Please enter the name of the two teams'),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
