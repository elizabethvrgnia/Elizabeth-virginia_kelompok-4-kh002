import 'package:flutter/material.dart';

class Profilecard extends StatelessWidget {
  final String nama;
  final String nim;
  final String hobi;
  final int skoraktivitas;

  const Profilecard({
    super.key,
    required this.nama,
    required this.nim,
    required this.hobi,
    required this.skoraktivitas,
  });

  @override
  Widget build(BuildContext context) {
    // Mengambil digit NIM
    int digitTerakhir = int.parse(nim.substring(nim.length - 1));

    int digitKe2DariBelakang =
    int.parse(nim.substring(nim.length - 2, nim.length - 1));

    // Rumus styling berdasarkan NIM
    double lebarKartu = 320.0 + (digitKe2DariBelakang * 5);
    double sudutLengkung = 12.0 + (digitTerakhir * 1.5);
    double ukuranLogo = 60.0 + (digitTerakhir * 2);
    double jarakPemisah = 15.0 + digitTerakhir;

    return Container(
      width: lebarKartu,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(sudutLengkung),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10.0,
          ),
        ],
      ),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header Kartu
          Row(
            children: [
              // Logo Flutter
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                child: FlutterLogo(
                  size: ukuranLogo,
                ),
              ),

              // Jarak antara logo dan teks
              SizedBox(
                width: jarakPemisah,
              ),

              // Judul dan nama
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Kartu Praktikum',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    nama,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // Garis pemisah
          const Divider(
            thickness: 1.5,
          ),

          // Detail identitas
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'NIM: $nim',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                'Hobi: $hobi',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                'Skor Aktivitas: $skoraktivitas',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}