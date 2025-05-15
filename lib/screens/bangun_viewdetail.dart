import 'package:flutter/material.dart';

class BudgetDetailPage extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> items;

  const BudgetDetailPage({super.key, required this.title, required this.items});

  int getTotal() {
    return items.fold<int>(
      0,
      (sum, item) => sum + (item['qty'] as int) * (item['price'] as int),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail - $title')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'List Produk Bangunan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child:
                  items.isEmpty
                      ? const Center(child: Text("Belum ada produk."))
                      : ListView(
                        children:
                            items.map((item) {
                              return ListTile(
                                leading: Text(item['no'].toString()),
                                title: Text(item['name']),
                                subtitle: Text('Jumlah: ${item['qty']}'),
                                trailing: Text(
                                  'Rp ${item['qty'] * item['price']}',
                                ),
                              );
                            }).toList(),
                      ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Total:', style: TextStyle(fontSize: 18)),
                Text('Rp ${getTotal()}', style: const TextStyle(fontSize: 18)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
