import 'package:flutter/material.dart';
import 'package:fund_bd/companyList.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PaymentMethodPage extends StatefulWidget {
  final Function(String) onSelectPaymentMethod;


  const PaymentMethodPage({Key? key, required this.onSelectPaymentMethod}) : super(key: key);

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  Color buttonColor = Color.fromARGB(194, 222, 48, 106);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Method', style: (TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize: 40,)),),
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
          SizedBox(height: 10),
          Text('Default method is : Bkash \n Mobile: 01750526761 ',style: TextStyle(fontSize: 18)),
          SizedBox(height: 10),
          Text('Select for new method',style: TextStyle(fontSize: 18)),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // onSelectPaymentMethod('bKash');
              // Navigator.pop(context);
              setState(() {
          buttonColor = Colors.green;
        });
            },
            child: Text('bKash',style: TextStyle(fontSize: 30 , color: Color.fromARGB(194, 222, 48, 106)),),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // onSelectPaymentMethod('Nagad');
              // Navigator.pop(context);
            },
            child: Text('Nagad',style: TextStyle(fontSize: 30 , color: Color.fromARGB(194, 222, 48, 106)),),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // onSelectPaymentMethod('upay');
              // Navigator.pop(context);
              print(Text('select',style: TextStyle(color: Colors.black),));
              
            },
            child: Text('upay',style: TextStyle(fontSize: 30 , color: Color.fromARGB(194, 222, 48, 106)),),
          ),

          SizedBox(height: 10),
          Text('MOBILE: ',style: TextStyle(fontSize: 30 , color: Color.fromARGB(194, 222, 48, 106)),),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter  Your number',
                
                labelStyle: TextStyle(fontSize: 30,color: Color.fromARGB(194, 222, 48, 106)),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
            onPressed: () {
              widget.onSelectPaymentMethod('Submit');
              Navigator.pop(context);
            },
            child: Text('Submit',style: TextStyle(fontSize: 30 , color: Color.fromARGB(194, 222, 48, 106)),),
          ),
        ],
      ),
      ),
    );
  }
}