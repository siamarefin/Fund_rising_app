import 'package:flutter/material.dart';

class PaymentMethod extends StatelessWidget {
  final Function(String) onSelectPaymentMethod;

  const PaymentMethod({Key? key, required this.onSelectPaymentMethod}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment', style: (TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize: 40,)),),
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
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          
            
          SizedBox(height: 100),
          
          Text('Default Method :',style: TextStyle(fontSize: 20 , color: Color.fromARGB(194, 222, 48, 106)),),
          Text('bKash',style: TextStyle(fontSize: 30 , color: Color.fromARGB(194, 222, 48, 106)),),
          Text('Mobile: 01750526761',style: TextStyle(fontSize: 20 , color: Color.fromARGB(194, 222, 48, 106)),),
            
        ],
      ),
      ),
    );
  }
}