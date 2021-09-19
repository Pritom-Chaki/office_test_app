// main.dart
import 'package:flutter/material.dart';
import 'dart:io';

class ConnectionPage extends StatefulWidget {
  @override
  _ConnectionPageState createState() => _ConnectionPageState();
}

class _ConnectionPageState extends State<ConnectionPage> {
  bool? _isConnected;

  // This function is triggered when the floating button is pressed
  Future<void> _checkInternetConnection() async {
    try {
      final response = await InternetAddress.lookup('www.kindacode.com');
      if (response.isNotEmpty) {
        setState(() {
          _isConnected = true;
        });
      }
    } on SocketException catch (err) {
      setState(() {
        _isConnected = false;
      });
      print(err);
    }
  }

  // This will check the connection at the beginning
  @override
  void initState() {
    _checkInternetConnection();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kindacode.com'),
      ),
      body: Center(
        child: Text(_isConnected == true ? 'Connected' : 'Not Connected',
            style: TextStyle(fontSize: 24)),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _checkInternetConnection, child: Icon(Icons.info)),
    );
  }
}
