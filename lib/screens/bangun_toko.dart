import 'package:flutter/material.dart';

class BangunToko extends StatefulWidget {
  BangunToko({super.key});
  @override
  State<BangunToko> createState() => _BangunTokoState();
}

class _BangunTokoState extends State<BangunToko> {
  TextEditingController _controller = TextEditingController();
  List<Map<String, String>> _products = []; // List untuk menyimpan produk>

  final List<Map<String, String>> _toko = [
    {
      "nama": "Toko Bangunan Utama",
      "alamat": "Jl. Mawar No. 12 (2 km)",
      "jam": "Buka sampai 17:00",
      "bahan": "Pasir",
    },
    {
      "nama": "Toko Sejahtera",
      "alamat": "Jl. Melati No. 23 (1.8 km)",
      "jam": "Buka sampai 17:00",
      "bahan": "Semen",
    },
    {
      "nama": "Toko Bangunan Jaya",
      "alamat": "Jl. Kenanga No. 31 (2.3 km)",
      "jam": "Buka sampai 17:00",
      "bahan": "Pasir",
    },
  ];

  void _cariToko() {
    String input = _controller.text.toLowerCase();
    setState(() {
      _products =
          _toko.where((toko) {
            return toko["bahan"]!.toLowerCase().contains(input);
          }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Temukan Toko'),
        backgroundColor: const Color.fromARGB(255, 216, 200, 58),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('cari toko berdasarkan bahan'),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: "Nama Bahan",
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.search, color: Colors.purple),
                  onPressed: _cariToko,
                ),
              ],
            ),
            SizedBox(height: 16),
            Text("Toko Terdekat"),
            SizedBox(height: 8),
            _products.isEmpty
                ? Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(16),
                  ),
                )
                : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text("No")),
                      DataColumn(label: Text("Nama")),
                      DataColumn(label: Text("Alamat")),
                      DataColumn(label: Text("Hari Buka")),
                    ],
                    rows: List.generate(_products.length, (index) {
                      var toko = _products[index];
                      return DataRow(
                        cells: [
                          DataCell(Text("${index + 1}")),
                          DataCell(Text(toko["nama"]!)),
                          DataCell(Text(toko["alamat"]!)),
                          DataCell(Text(toko["jam"]!)),
                        ],
                      );
                    }),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
