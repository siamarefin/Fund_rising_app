import 'package:flutter/material.dart';
import 'package:fund_bd/home_screen.dart';

class SubmitFundraisingPage extends StatelessWidget {
  final String goal;
  final String description;

  SubmitFundraisingPage({required this.goal, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Submit Fundraising'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Fundraising Details',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text('Goal: $goal'),
            SizedBox(height: 8),
            Text('Description: $description'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>HomeScreen(),
                  ),
                ); // Navigate back to the home screen
              },
              child: Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}