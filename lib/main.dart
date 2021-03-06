import 'dart:io';

import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoApp(),
    );
  }
}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DraggableBottomSheet(
          backgroundWidget: Scaffold(
            appBar: AppBar(
              title: Text('Shop Now'),
              backgroundColor: Colors.deepOrange,
            ),
            body: Card(
              elevation: 10,
              child: Container(
                height: 500,
                child: Column(
                  children: [
                    Image.asset('assets/pant.jpg'),
                    SizedBox(height: 10,),
                    Text('Track Pant with Rapid-Dry',style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.w500,
                    ),),
                  ],
                ),
              ),
            ),
          ),
          expandedChild: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
            ),
            child: Column(
              children: [
                Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                SizedBox(height: 10,),
                Container(
                  decoration:BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      PaymentInfo(name: 'MRP',price: '1200',),
                      PaymentInfo(name: 'Discount',price: '200',),
                      PaymentInfo(name: 'Total Price',price: '1000',),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                 child: PaymentInfo(name: 'Paid By:',price: 'Card',),
                ),
                SizedBox(height: 10.0,),
                Expanded(
                    child: Image.asset('assets/order.png'),
                )
              ],
            ),
          ),
          previewChild: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              color: Colors.black26
            ),
            child: Column(
              children: [
                Container(
                  height: 5,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Payment Information',style: TextStyle(
                  fontSize: 16,fontWeight: FontWeight.w800
                ),)
              ],
            ),
          ),
        minExtent: 70.0,
        expansionExtent: 200,
        maxExtent: MediaQuery.of(context).size.height * 0.7,
      ),
    );
  }
}

class PaymentInfo extends StatelessWidget {

 final String name;
 final String price;

 PaymentInfo({this.name,this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.0),),
          Text(price,style: TextStyle(
            fontSize: 20.0,fontWeight: FontWeight.bold,
          ),),
        ],
      ),
    );
  }
}





















