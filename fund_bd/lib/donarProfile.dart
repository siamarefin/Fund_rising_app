import 'package:flutter/material.dart';

// ... (previous code)

class DonorProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // For simplicity, donor details are hardcoded. In a real app, you'd retrieve them from a database.
    String donorName = 'Siam Arefin';
    String Mobile ='01750526761';
    String Location= 'ShahPoran Hall , SUST , Sylhet , Bangladesh';
    String donorEmail = 'siamarefin2000@gmail.com';
    List<String> about = ['I am siam arefin . My purpose is to assist and provide information to the best of my ability based on the data I have been trained on. I don have personal experiences, opinions, or emotions. My goal is to help answer your questions, provide explanations, generate content, and assist with a variety of tasks. '];

    return Scaffold(
      appBar: AppBar(
        title: Text('PROFILE', style: (TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize: 40,)),),
        backgroundColor: Color.fromARGB(194, 222, 48, 106 ) ,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bgg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/siam.png'),
                  ),
                  
                ],
              ),
              SizedBox(width: 10),
                  Text(
                    'Name: $donorName',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
              SizedBox(width: 10),
                  Text(
                    'Mobile no: $Mobile',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
              Text(
                'Email: $donorEmail',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(width: 10),
                  Text(
                    'Location: $Location',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
              SizedBox(height: 20),
              Text(
                'About:',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: about
                    .map((donation) => Text(
                          '- $donation',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
