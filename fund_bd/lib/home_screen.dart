import 'package:flutter/material.dart';
import 'package:fund_bd/start_fund_rising.dart';

class HomeScreen extends StatelessWidget {
   Widget listTile(
      {required IconData icon,
      required String title,
      required Function onTap}) {
    return ListTile(
      onTap: () => onTap(),
      leading: Icon(
        icon,
        size: 25,
        color: Color.fromARGB(255, 186, 227, 231),
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
      backgroundColor: Colors.grey,
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
                      backgroundColor: Colors.white54,
                      radius: 43,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Color.fromARGB(255, 102, 131, 182),
                        backgroundImage: NetworkImage(
                            'https://static.vecteezy.com/system/resources/previews/020/765/399/non_2x/default-profile-account-unknown-icon-black-silhouette-free-vector.jpg'),
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
                
              },
            ),
            listTile(
              icon: Icons.notifications,
              title: 'Notification',
              onTap: () {},
            ),
            listTile(
              icon: Icons.cleaning_services,
              title: 'Our Service',
              onTap: () {
                
              },
            ),
            listTile(
              icon: Icons.location_on,
              title: 'Pickup Points',
              onTap: () {},
            ),
            listTile(
              icon: Icons.subscriptions,
              title: 'Subscription',
              onTap: () {},
            ),
            listTile(
              icon: Icons.shop_2,
              title: 'Service Cart',
              onTap: () {
                
              },
            ),
            listTile(icon: Icons.message_rounded, title: 'FAQs', onTap: () {}),
            Container(
              height: 350,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Contact Support'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Call us: '),
                      SizedBox(
                        width: 10,
                      ),
                      Text('0123456789'),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text('Mail us: '),
                        SizedBox(
                          width: 10,
                        ),
                        Text('siam@gmail.com'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Home',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Help Us Make a Difference!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/bg.png', // Replace with your image asset
              height: 150,
            ),
            SizedBox(height: 20),
            Text(
              'Total Funds Raised:',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              '\$5000', // Replace with the actual funds raised
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>StartFundraisingPage(),
                  ),
                );
              },
              child: Text('Start Fundraising'),
            ),
          ],
        ),
      ),
    );
  }
}