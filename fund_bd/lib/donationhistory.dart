// donation_history_page.dart

import 'package:flutter/material.dart';

class DonationHistoryPage extends StatelessWidget {
  // Define a list of donation history details
  final List<Map<String, dynamic>> donationHistoryList = [
    {
      'company': 'Hopeful Foundation',
      'amount': 100,
      'date': '2022-05-10',
      'event':'Join us for a community cleanup event on Saturday at 9 AM. Let\'s make our city clean and green! \nJoin us for a community cleanup event on Saturday at 9 AM. Let\'s make our city clean and green!',
    },
    {
      'company': 'Giving Network',
      'amount': 50,
      'date': '2022-06-15',
      'event':'Help us provide meals to the homeless. Our food distribution event will take place on Sunday from 12 PM to 3 PM. \nHelp us provide meals to the homeless. Our food distribution event will take place on Sunday from 12 PM to 3 PM.',
      
    },
    {
      'company': 'Bright Outreach',
      'amount': 530,
      'date': '2022-06-15',
      'event':'Educational workshop for children happening this Friday at 2 PM. Enhance your child\'s learning experience!\nEducational workshop for children happening this Friday at 2 PM. Enhance your child\'s learning experience!',
      
    },

    // Add more donation history details as needed
    // ...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donation History'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bgg.jpg'), // Set the background image
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: donationHistoryList.length,
          itemBuilder: (context, index) {
            final donationDetails = donationHistoryList[index];
            return ListTile(
              title: Text('Company: ${donationDetails['company']}' , style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold , color: Colors.green),),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Amount: \$${donationDetails['amount']}'),
                  Text('Date: ${donationDetails['date']}'),
                  Text('Event Details : ${donationDetails['event']}'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
