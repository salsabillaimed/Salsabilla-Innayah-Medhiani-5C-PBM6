import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 99, 68, 11),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Salsabilla Innayah Medhiani",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Color.fromARGB(224, 255, 255, 255)
            ),
          ),
          const SizedBox(
            height: 16
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(180),
              child: Image.asset(
                "assets/me.jpg",
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 20
          ),
          const Text("Halo! Nama saya Salsabilla Innayah Medhiani biasa dipanggil billa. Saya mahasiswi dari Prodi Informatika Fakultas Ilmu Komputer Universitas Singaperbangsa Karawang angkatan 2020. Pada saat ini saya sudah memasuki semester 5. Semoga kuat sampai tamat:)",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22, 
              color: Color.fromARGB(255, 255, 255, 255)
            ),
          ),
          const SizedBox(
            height: 16
          ),
          const Text(
            "You can find me on my another accs:",
            style: TextStyle(
              textBaseline: TextBaseline.alphabetic,
              fontSize: 20,
              color: Color.fromARGB(224, 255, 255, 255)
            ),
          ),
          const SizedBox(
            height: 16
          ),
          const Text(
            "Instagram : @simedhiani",
            style: TextStyle(
              textBaseline: TextBaseline.alphabetic,
              fontSize: 20,
              color: Color.fromARGB(224, 255, 255, 255)
            ),
          ),        
        ],      
      ),
    );
  }
}