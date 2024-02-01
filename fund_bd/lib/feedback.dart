// feedback_page.dart

import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final TextEditingController feedbackController = TextEditingController();
  String selectedCompany = '';
  String selectedEvent = '';
  final List<String> companies = [
    'Hopeful Hearts Foundation',
    'Unity for International',
    'Compassionate Alliance',
    'Giving Network',
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Feedback',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),
        ),
        backgroundColor: Color.fromARGB(194, 222, 48, 106),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bgg.jpg'), // Set the background image
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Select Company:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: companies.map((company) {
                return ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedCompany = company;
                    });
                  },
                  child: Text(company),
                );
              }).toList(),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Implement company selection logic (you can show a dialog or navigate to a company selection page)
                // For now, let's use a placeholder company
                setState(() {
                  selectedCompany = 'Company ABC';
                });
              },
              child: Text('Select Company'),
            ),
            SizedBox(height: 16),
            Text(
              'Your Feedback',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              controller: feedbackController,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Enter your feedback here',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle the submission of feedback with selected company and event
                String userFeedback = feedbackController.text;
                print('Selected Company: $selectedCompany');
                print('Selected Event: $selectedEvent');
                print('User Feedback: $userFeedback');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Feedback submitted successfully!',style: TextStyle(color:Colors.black),),
                  ),
                );
                Navigator.pop(context);
              },
              child: Text('Submit Feedback'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to the FeedbackHistoryPage to view feedback history
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FeedbackHistoryPage(),
                  ),
                );
              },
              child: Text('View Feedback History'),
            ),
          ],
        ),
      ),
    );
  }
}

class FeedbackHistoryPage extends StatelessWidget {
  // Define a list of feedback history details
  final List<Map<String, String>> feedbackHistoryList = [
    {
      'company': 'Hopeful Hearts Foundation',
      'event': 'food event',
      'feedback': 'I am impressed with the excellent customer service provided by Hopeful Hearts Foundation. The support team was quick to address my queries, and the overall experience was seamless.',
      'date': '2022-07-20',
    },
    {
      'company': 'Giving Network',
      'event': 'hospital event',
      'feedback': 'Giving Network Solutions has consistently delivered high-quality products. Their innovative approach and attention to detail set them apart. I am a satisfied customer and look forward to future collaborations.',
      'date': '2022-07-20',
    },
    {
      'company': 'Serenity Services',
      'event': 'hospital event',
      'feedback': 'Giving Network Solutions has consistently delivered high-quality products. Their innovative approach and attention to detail set them apart. I am a satisfied customer and look forward to future collaborations.',
      'date': '2022-07-20',
    },
    // Add more feedback history details as needed
    // ...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Feedback History',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),
        ),
        backgroundColor: Color.fromARGB(194, 222, 48, 106),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bgg.jpg'), // Set the background image
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: feedbackHistoryList.length,
          itemBuilder: (context, index) {
            final feedbackDetails = feedbackHistoryList[index];
            return ListTile(
              title: Text(
                'Company: ${feedbackDetails['company']}',
                style: TextStyle(color: Color.fromARGB(194, 222, 48, 106), fontSize: 20),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('\nFeedback: ${feedbackDetails['feedback']}'),
                  Text('\nDate: ${feedbackDetails['date']}'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
