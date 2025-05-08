import 'package:flutter/material.dart';

class BangunProfile extends StatelessWidget {
  const BangunProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
        ),
        backgroundColor: Colors.amber[800],
      ),
    );
  }
}
