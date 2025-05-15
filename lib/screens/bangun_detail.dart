import 'package:flutter/material.dart';
import 'package:paa_modul6/screens/bangun_cetak.dart';
import 'package:paa_modul6/screens/bangun_profile.dart';
import 'package:paa_modul6/screens/bangun_toko.dart';
import 'bangun_anggaran.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFC107),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'BANGUN.in',
                          style: TextStyle(
                            fontFamily: 'RobotoCondensed',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20),

                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BangunToko(),
                              ),
                            );
                          },
                          borderRadius: BorderRadius.circular(16),
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.amber[800],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Jumlah Project Berjalan',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  '200 Project',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      'Tampilkan Project Berjalan',
                                      style: TextStyle(color: Colors.white70),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 14,
                                      color: Colors.white70,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    spacing: 12, // jarak horizontal
                    children: [
                      MenuButton(
                        icon: Icons.inventory,
                        label: 'Manajemen\nAnggaran',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BangunAnggaran(),
                            ),
                          );
                        },
                      ),
                      MenuButton(
                        icon: Icons.map,
                        label: 'Temukan\nToko',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BangunToko(),
                            ),
                          );
                        },
                      ),
                      MenuButton(
                        icon: Icons.picture_as_pdf,
                        label: 'Cetak\nDokumen',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BangunCetak(),
                            ),
                          );
                        },
                      ),
                      MenuButton(
                        icon: Icons.person,
                        label: 'Profile',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BangunProfile(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Baru Dibuka',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        RecentlyOpenedCard(
                          title: 'Proyek Rumah Tinggal',
                          subtitle: 'Jakarta Selatan • 12 Mei 2025',
                          onTap: () {
                            // Arahkan ke halaman detail proyek
                          },
                        ),
                        RecentlyOpenedCard(
                          title: 'Renovasi Kamar Mandi',
                          subtitle: 'Bandung • 10 Mei 2025',
                          onTap: () {
                            // Arahkan ke halaman detail proyek
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'BANGUN.in',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Aplikasi untuk mengatur anggaran\nbahan bangunan dengan lebih bijak',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'FOLLOW US',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 12),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/147/147144.png',
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          radius: 25,
                          child: const Icon(Icons.person, color: Colors.grey),
                        ),
                        const SizedBox(width: 20),
                        CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          radius: 25,
                          child: const Icon(Icons.person, color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.facebook),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.camera_alt,
                          ), // sebagai pengganti Instagram
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.alternate_email,
                          ), // sebagai pengganti Twitter
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  const MenuButton({
    required this.icon,
    required this.label,
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 82,
          height: 82,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.amber[800],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white, size: 30),
              const SizedBox(height: 8),
              Text(
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 12, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  const NewsCard({required this.imageUrl, required this.title, Key? key})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(right: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: SizedBox(
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: Image.network(
                imageUrl,
                height: 120,
                width: 180,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(title, maxLines: 2, overflow: TextOverflow.ellipsis),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'Detail.....',
                style: TextStyle(color: Colors.redAccent),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class RecentlyOpenedCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const RecentlyOpenedCard({
    required this.title,
    required this.subtitle,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.only(bottom: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 2,
        child: ListTile(
          contentPadding: const EdgeInsets.all(12),
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          subtitle: Text(subtitle),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        ),
      ),
    );
  }
}
