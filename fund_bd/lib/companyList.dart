import 'package:ansicolor/ansicolor.dart';
import 'package:flutter/material.dart';
import 'package:fund_bd/payment.dart';

class CompanyListScreen extends StatelessWidget {
  final List<String> companies = [
    'Hopeful Hearts Foundation',
    'Unity for International',
    'Compassionate  Alliance',
    'Giving Network',
    'Bright Outreach',
    'Empowerment Emporium',
    'Harmony for Humanity',
    'Serenity Services',
    // Add more companies as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose a Charity', style: (TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize: 40,)),),
        backgroundColor: Color.fromARGB(194, 222, 48, 106 ) ,
      ),
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bgg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      
      child:ListView.builder(
        
        itemCount: companies.length,
        itemBuilder: (context, index) {
          return ListTile(
            
            title: Align(alignment: Alignment.center,
            child: Text(companies[index],style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(194, 222, 48, 106),
            fontSize: 25.0,// Set text color to blue
          ),
            ) ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DonationScreen(company: companies[index]),
                ),
              );
            },
          );
        },
      ),
      ),
    );
  }
}
TextEditingController amountController = TextEditingController();
class DonationScreen extends StatelessWidget {
  final String company;

  DonationScreen({required this.company});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donation Page', style: (TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize: 40,)),),
        backgroundColor: Color.fromARGB(194, 222, 48, 106 ) ,
      ),
      
      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bgg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentMethodPage(onSelectPaymentMethod: (String ) {  },),
                  ),
                );
              },
              child: Text('Select Payment Method :',style: TextStyle(color: Color.fromARGB(194, 222, 48, 106),fontSize: 20),),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                
              },
              child: Text('Bkash',style: TextStyle(color: Color.fromARGB(194, 222, 48, 106),fontSize: 30),),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                
              },
              child: Text('01750526761',style: TextStyle(color: Color.fromARGB(194, 222, 48, 106),fontSize: 30),),
            ),
            SizedBox(height: 50),
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter dollar amount:',
                
                labelStyle: TextStyle(color: Color.fromARGB(194, 222, 48, 106),fontSize: 30),
              ),
            ),
            SizedBox(height: 20),
            
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DonationCompletePage(),
                  ),
                );
              },
              child: Text('Donate',style: TextStyle(color: Color.fromARGB(194, 222, 48, 106),fontSize: 30),),
            ),
            
          ],
        ),
      ),
    ),
    );
    
  }
  


}



class DonationCompletePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donation Complete',style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(194, 222, 48, 106),fontSize: 30)),
      ),
      body: Center(
        child: Text(
          'Thank you for your donation! ',
          style: TextStyle(color: Color.fromARGB(194, 222, 48, 106),fontSize: 30)
        ),
      ),
    );
  }
}


Widget listTile({required IconData icon, required String title, required Function onTap}) {
    return ListTile(
      onTap: () => onTap(),
      leading: Icon(
        icon,
        size: 25,
        color: Color.fromARGB(255, 250, 166, 250),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }


