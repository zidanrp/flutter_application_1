import 'package:flutter/material.dart';

class PPATPage extends StatelessWidget {
  final Color customColor = Color.fromARGB(255, 110, 174, 115);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Tambahkan latar belakang abu-abu
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/pendirianyayasan.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors
                  .white, // Berikan warna latar belakang putih pada konten
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Persyaratan Kelengkapan Data Klien Ke Kantor PPAT',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: customColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Secara umum untuk keperluan pembuatan Akta-Akta PPAT seperti: Akta Jual Beli, Akta Hibah, Akta Pembagian Hak Bersama, Akta Inbreng, Akta Pemberian Hak Tanggungan, Akta Waris, persyaratan awal yang harus disiapkan oleh Klien untuk persiapan Pemberkasan dan Permohonan ke Kantor Pertanahan (BPN) adalah:',
                    style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                  ),
                  SizedBox(height: 10),
                  bulletPoint('- FOTOKOPI KTP (PENJUAL DAN PEMBELI).'),
                  bulletPoint('- NPWP (PENJUAL).'),
                  bulletPoint('- KK (PENJUAL DAN PEMBELI).'),
                  bulletPoint('- SURAT NIKAH (PENJUAL).'),
                  bulletPoint('- FOTOKOPI PBB TERAKHIR.'),
                  bulletPoint(
                      '- BAYAR PAJAK PPH (PENJUAL) DAN BPHTB (PEMBELI).'),
                  bulletPoint('- SURAT KUASA NOTARIL (APABILA DIKUASAKAN).'),
                  SizedBox(height: 10),
                  Text(
                    'Tambahan lain secara khusus antara lain:',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: customColor),
                  ),
                  bulletPoint('- Akta Inbreng:'),
                  subBulletPoint(
                      '- Keputusan RUPS Perusahaan mengenai Inbreng tersebut;'),
                  subBulletPoint(
                      '- Anggaran Dasar Perusahaan dan perubahan-perubahannya.'),
                  bulletPoint('- Akta Pemberian Hak Tanggungan:'),
                  subBulletPoint('- SKMHT (bila menggunakan SKMHT);'),
                  subBulletPoint(
                      '- Anggaran Dasar beserta perubahan-perubahannya dari Perusahaan yang menjaminkan tanahnya.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "• ",
            style: TextStyle(fontSize: 16, color: customColor),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16, color: Colors.grey[800]),
            ),
          ),
        ],
      ),
    );
  }

  Widget subBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 2.0, bottom: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(width: 16),
          Text(
            "- ",
            style: TextStyle(fontSize: 16, color: Colors.grey[800]),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16, color: Colors.grey[800]),
            ),
          ),
        ],
      ),
    );
  }
}
