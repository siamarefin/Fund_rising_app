// event_page.dart

import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  // Define a list of NGO details
  final List<Map<String, String>> ngoDetailsList = [
  {
    'name': 'Hopeful Hearts Foundation',
    'website':'www.hopeful.com',
    'email': 'hopeful@gmail.com',
    'location': 'Sylhet, Bangladesh',
    'eventDetails': 'change event',
  },
  {
    'name': 'Unity for International',
    'website':'www.unity.com',
    'email': 'unity@gmail.com',
    'location': 'Dhaka,Bangladesh',
    'eventDetails': 'Help us provide meals to the homeless. Our food distribution event will take place on Sunday from 12 PM to 3 PM.',
  },
  {
    'name': 'Compassionate  Alliance',
    'website':'www.alliance.com',
    'email': 'alliance@gmail.com',
    
    'location': 'Rajshahi,Bangladesh',
    'eventDetails': 'Educational workshop for children happening this Friday at 2 PM. Enhance your child\'s learning experience!',
  },
  {
    'name': 'Giving Network',
    'website':'www.giving.com',
    'email': 'giving@gmail.com',
    'location': 'Dhaka,Bangladesh',
    'eventDetails': 'Planting trees for a greener future. Join us on Wednesday at 10 AM to make a positive impact on the environment.',
  },
  {
    'name': 'Bright Outreach',
    'website':'www.bright.com',
    'email': 'bright@gmail.com',
    'location': 'Sylhet, Bangladesh',
    'eventDetails': 'Support our fundraising gala on Saturday night. Enjoy an evening of  food, and charity to make a difference!',
  },
  {
    'name': 'Empowerment Emporium',
    'website':'www.emporium.com',
    'email': 'emporium@gmail.com',
    'location': 'Sylhet, Bangladesh',
    'eventDetails': 'Health awareness campaign this Sunday. Free medical check-ups and consultations for the community.',
  }
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('EVENT', style: (TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize: 40,)),),
        backgroundColor: Color.fromARGB(194, 222, 48, 106 ) ,
      ),
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bgg.jpg'), // Set the background image
            fit: BoxFit.cover,
          ),
        ),

      child:ListView.builder(
        itemCount: ngoDetailsList.length,
        itemBuilder: (context, index) {
          final ngoDetails = ngoDetailsList[index];
          return ListTile(
            leading: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/ngo5.jpg'),
            ),
            title: Text(ngoDetails['name'] ?? '' , style: (TextStyle(color: Color.fromARGB(194, 222, 48, 106 ),fontWeight: FontWeight.bold, fontSize: 20,)),),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Website: ${ngoDetails['website'] ?? ''}',style: (TextStyle(fontWeight: FontWeight.bold)), ),
                Text('Email: ${ngoDetails['email'] ?? ''}',style: (TextStyle(fontWeight: FontWeight.bold))),
                Text('Location: ${ngoDetails['location'] ?? ''}',style: (TextStyle(fontWeight: FontWeight.bold))),
                Text('Event Details: ${ngoDetails['eventDetails'] ?? ''}'),
              ],
            ),
          );
        },
      ),
      ),
    );
  }
}
