import 'package:flutter/material.dart';

class BangunCetak extends StatelessWidget {
  const BangunCetak({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Cetak Dokumen'),
        backgroundColor: const Color.fromARGB(255, 216, 200, 58),
      )
    );
  }
}