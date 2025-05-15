import 'package:flutter/material.dart';
import 'bangun_viewdetail.dart';

class BangunAnggaran extends StatefulWidget {
  const BangunAnggaran({super.key});

  @override
  State<BangunAnggaran> createState() => _BangunAnggaranState();
}

class _BangunAnggaranState extends State<BangunAnggaran> {
  List<Map<String, dynamic>> listProjectBerjalan = [
    {
      'title': 'Project Pembangunan Apartement Ohio',
      'items': [
        {'no': 1, 'name': 'Semen', 'qty': 10, 'price': 50000},
        {'no': 2, 'name': 'Batu Bata', 'qty': 100, 'price': 1000},
      ],
    },
    {'title': 'Project Pembangunan IKN', 'items': []},
  ];

  List<Map<String, dynamic>> listProjectSelesai = [
    {
      'title': 'Project Pembangunan Apartement Ohio',
      'items': [
        {'no': 1, 'name': 'Cat Tembok', 'qty': 5, 'price': 150000},
      ],
    },
  ];

  void _addNewProject() {
    setState(() {
      listProjectBerjalan.add({
        'title': 'Project Baru ${listProjectBerjalan.length + 1}',
        'items': [],
      });
    });
  }

  void _openDetail(Map<String, dynamic> project) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (_) => BudgetDetailPage(
              title: project['title'],
              items: project['items'],
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Manajemen Anggaran',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.amber[800],
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.white),
            onPressed: _addNewProject,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            "Project Berjalan",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          buildProjectCard(listProjectBerjalan),
          const SizedBox(height: 16),
          const Text(
            "Project Selesai",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          buildProjectCard(listProjectSelesai),
        ],
      ),
    );
  }

  Widget buildProjectCard(List<Map<String, dynamic>> projectList) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.amber[800],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...projectList.map(
            (project) => ListTile(
              dense: true,
              title: Text(
                project['title'],
                style: const TextStyle(color: Colors.white),
              ),
              trailing: const Icon(Icons.chevron_right, color: Colors.white),
              contentPadding: EdgeInsets.zero,
              onTap: () => _openDetail(project),
            ),
          ),
        ],
      ),
    );
  }
}
