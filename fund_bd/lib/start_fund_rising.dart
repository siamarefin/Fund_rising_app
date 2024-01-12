import 'package:flutter/material.dart';
import 'package:fund_bd/submit_fund.dart';

class StartFundraisingPage extends StatelessWidget {
  final TextEditingController _fundraisingGoalController = TextEditingController();
  final TextEditingController _fundraisingDescriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Start Fundraising'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Fundraising Goal',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: _fundraisingGoalController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter your fundraising goal amount',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Fundraising Description',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: _fundraisingDescriptionController,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Describe your fundraising cause',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>SubmitFundraisingPage(description: "Description for fund",goal: 'Goal'),
                  ),
                );
              },
              child: Text('Submit Fundraising'),
            ),
          ],
        ),
      ),
    );
  }
}