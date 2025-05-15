import 'package:flutter/material.dart';

class BangunCetak extends StatelessWidget {
  const BangunCetak({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Cetak Dokumen', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.amber[800],
      ),
    );
  }
}
