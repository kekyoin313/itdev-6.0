import 'package:flutter/material.dart';

class BangunTambahanggaran extends StatefulWidget {
  @override
  State<BangunTambahanggaran> createState() => BangunTambahanggaranState();
}

class BangunTambahanggaranState extends State<BangunTambahanggaran> {
  final _namaController = TextEditingController();
  final _deskripsiController = TextEditingController();

  List<Map<String, dynamic>> detailAnggaran = [];

  final List<Map<String, dynamic>> produkList = [
    {
      'id': 1,
      'nama': 'Semen Tiga Roda',
      'harga': 75000,
      'satuan': 'sak',
      'deskripsi': 'Semen berkualitas tinggi untuk konstruksi bangunan',
      'gambar': 'https://via.placeholder.com/150',
    },
    {
      'id': 2,
      'nama': 'Batu Bata Merah',
      'harga': 500,
      'satuan': 'buah',
      'deskripsi': 'Batu bata untuk dinding rumah',
      'gambar': 'https://via.placeholder.com/150',
    },
  ];

  void tambahKeAnggaran(Map<String, dynamic> produk) {
    setState(() {
      detailAnggaran.add({
        'nama': produk['nama'],
        'jumlah': 1,
        'harga': produk['harga'],
      });
    });
  }

  void tampilkanDetailProduk(Map<String, dynamic> produk) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(produk['gambar'], height: 100),
              SizedBox(height: 10),
              Text(
                produk['nama'],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('Harga: Rp ${produk['harga']} / ${produk['satuan']}'),
              SizedBox(height: 10),
              Text(produk['deskripsi']),
            ],
          ),
        );
      },
    );
  }

  void tampilkanDialogProduk() {
    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            title: Text('Pilih Produk'),
            content: SizedBox(
              height: 200,
              width: double.maxFinite,
              child: ListView.builder(
                itemCount: produkList.length,
                itemBuilder: (_, index) {
                  final produk = produkList[index];
                  return ListTile(
                    title: Text(produk['nama']),
                    subtitle: Text(
                      'Rp ${produk['harga']} / ${produk['satuan']}',
                    ),
                    onTap: () {
                      tambahKeAnggaran(produk);
                      Navigator.pop(context);
                    },
                    onLongPress: () => tampilkanDetailProduk(produk),
                  );
                },
              ),
            ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tambah Anggaran')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: tampilkanDialogProduk,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            TextField(
              controller: _namaController,
              decoration: InputDecoration(labelText: 'Nama Proyek'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _deskripsiController,
              maxLines: 2,
              decoration: InputDecoration(labelText: 'Deskripsi Proyek'),
            ),
            SizedBox(height: 20),
            Text(
              'Detail Produk Anggaran',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('No')),
                  DataColumn(label: Text('Nama Produk')),
                  DataColumn(label: Text('Jumlah')),
                  DataColumn(label: Text('Harga')),
                ],
                rows:
                    detailAnggaran.asMap().entries.map((entry) {
                      final i = entry.key;
                      final item = entry.value;
                      return DataRow(
                        cells: [
                          DataCell(Text('${i + 1}')),
                          DataCell(Text(item['nama'])),
                          DataCell(Text('${item['jumlah']}')),
                          DataCell(Text('Rp ${item['harga']}')),
                        ],
                      );
                    }).toList(),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton.icon(
              label: Text('Simpan'),
              onPressed: () {
                final nama = _namaController.text.trim();
                final deskripsi = _deskripsiController.text.trim();

                if (nama.isEmpty || deskripsi.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Gagal menambahkan data. Mohon isi semua kolom.',
                      ),
                    ),
                  );
                } else {
                  // _simpanAnggaran(nama, deskripsi);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Data berhasil ditambahkan')),
                  );

                  Navigator.pushNamed(context, "/detailAnggaran");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
