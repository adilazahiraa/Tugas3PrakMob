import 'package:flutter/material.dart';
import 'package:pert3/sidemenu.dart'; // Impor Sidemenu

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Gambar logo atau ikon di bagian atas
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.info_outline,
                size: 50,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            
            // Judul dengan gaya yang lebih besar dan bold
            const Text(
              'Tentang Aplikasi',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            
            // Deskripsi tentang aplikasi dengan styling yang lebih nyaman dibaca
            const Text(
              'Aplikasi ini dibuat untuk membantu pengguna dalam melakukan berbagai kegiatan terkait dengan pegawai. Aplikasi ini dilengkapi dengan fitur login, profile management, dan informasi terkait layanan lainnya.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 20),

            // Tombol untuk membuka informasi lebih lanjut (contoh bisa diubah)
            ElevatedButton(
              onPressed: () {
                // Tindakan ketika tombol ditekan, bisa diubah sesuai kebutuhan
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Informasi lebih lanjut belum tersedia')),
                );
              },
              child: const Text('Informasi Lebih Lanjut'),
            ),
            
            const SizedBox(height: 20),
            
            // Versi aplikasi atau detail tambahan
            const Text(
              'Versi Aplikasi: 1.0.0',
              style: TextStyle(
                fontSize: 14,
                fontStyle: FontStyle.italic,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      drawer: const Sidemenu(), // Menggunakan drawer dari Sidemenu
    );
  }
}
