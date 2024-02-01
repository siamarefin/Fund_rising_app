


import 'package:flutter/material.dart';
import 'package:fund_bd/companyList.dart';
import 'package:fund_bd/donarProfile.dart';
import 'package:fund_bd/donationhistory.dart';
import 'package:fund_bd/event.dart';
import 'package:fund_bd/feedback.dart';
import 'package:fund_bd/payment.dart';
import 'package:fund_bd/paymentmethod.dart';

class HomeScreen extends StatelessWidget {

  

  @override

  Widget listTile(
      {required IconData icon,
      required String title,
      required Function onTap}) {
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
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 217, 0, 255),
        
      drawer:  Drawer(
      child: Container(
        
        color: Color.fromARGB(255, 109, 122, 109),
        child: ListView(
          children: [
            DrawerHeader(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 43,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/siam.png'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Siam Arefin'),
                        Text(
                          'siamarefin@gmail.com',
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text('Mobile:01750526761'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            listTile(
              icon: Icons.home,
              title: 'Home',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
            ),
            listTile(
              icon: Icons.account_box,
              title: 'My Profile',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DonorProfileScreen(),
                  ),
                );
              },
            ),
            listTile(
              icon: Icons.notifications,
              title: 'Donate',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CompanyListScreen(),
                  ),
                );
              },
            ),
            listTile(
              icon: Icons.payment,
              title: 'Payment method',
              onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentMethod(onSelectPaymentMethod: (String ) {  },),
                  ),
                  
                );
              },
            ),
            listTile(
              icon: Icons.location_on,
              title: 'Donation history ',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DonationHistoryPage(),
                  ),
                );
              },
            ),
            listTile(
              icon: Icons.subscriptions,
              title: 'Feedback',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FeedbackPage(),
                  ),
                );
              },
            ),
            
          ],
        ),
      ),
    ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('HOME', style: (TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize: 40,)),),
        backgroundColor: Color.fromARGB(194, 222, 48, 106 ) ,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // First Row
              Row(
                children: [
                  _buildGridItem('assets/ngo1.jpg', 'Hopeful Hearts Foundation'),
                  SizedBox(width: 16),
                  _buildGridItem('assets/ngo2.jpg', 'Unity for International'),
                ],
              ),
              SizedBox(height: 16),
              // Second Row
              Row(
                children: [
                  _buildGridItem('assets/ngo3.jpg', 'Compassionate  Alliance'),
                  SizedBox(width: 16),
                  _buildGridItem('assets/ngo4.jpg', 'Giving Network'),
                ],
              ),
              Row(
                children: [
                  _buildGridItem('assets/ngo5.jpg', 'Bright Outreach'),
                  SizedBox(width: 16),
                  _buildGridItem('assets/ngo6.jpg', 'Empowerment Emporium'),
                ],
              ),
              Row(
                children: [
                  _buildGridItem('assets/ngo7.jpg', 'Harmony for Humanity'),
                  SizedBox(width: 16),
                  _buildGridItem('assets/ngo8.jpg', 'Serenity Services'),
                ],
              ),
              Row(
                children: [
                SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EventPage(),
              ),
            );
              },
              child: Text('See our  EVENT details',style: TextStyle(color: Color.fromARGB(194, 222, 48, 106),fontSize: 30),),
            ),
                ]
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  

  Widget _buildGridItem(String imagePath, String name) {
    return Expanded(
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 100,
          ),
          SizedBox(height: 10),

          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          

          
        ],
        
      ),
    );
  }
}


