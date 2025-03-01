import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Bidding Page')),
        body: Center(
          child: MaximumBid(),
        ),
      ),
    );
  }
}

class MaximumBid extends StatefulWidget {
  @override
  _MaximumBidState createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  int _currentBid = 100;

  void _increaseBid() {
    setState(() {
      _currentBid += 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Current Maximum Bid:'),
        Text('\$$_currentBid', style: TextStyle(fontSize: 24)),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: _increaseBid,
          child: Text('Increase Bid by \$50'),
        ),
      ],
    );
  }
}
