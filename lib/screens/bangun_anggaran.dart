import 'package:flutter/material.dart';

class BangunAnggaran extends StatelessWidget {
  BangunAnggaran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Manajemen Anggaran'),
        backgroundColor: const Color.fromARGB(255, 216, 200, 58),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            "Project berjalan",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          buildProjectCard("200 Project", listProjectBerjalan),
          SizedBox(height: 16),
          Text(
            "Project Selesai",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          buildProjectCard("100 Project", listProjectSelesai),
        ],
      ),
    );
  }

  Widget buildProjectCard(String title, List<String> projectList) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.amber[800],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          ...projectList.map(
            (project) => ListTile(
              dense: true,
              title: Text(project, style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.chevron_right, color: Colors.white),
              contentPadding: EdgeInsets.zero,
            ),
          ),
        ],
      ),
    );
  }

  final listProjectBerjalan = [
    "Project Pembangunan Apartement Ohio",
    "Project Pembangunan IKN",
    "Project Pembangunan Hotel Amerika",
    "Project Pembangunan Apartement Ohio",
    "Project Pembangunan 5",
    "Project Pembangunan Hotel 6",
    "Project Pembangunan Apartement 7",
  ];

  final listProjectSelesai = [
    "Project Pembangunan Apartement Ohio",
  ]; // Sama seperti di atas
}
