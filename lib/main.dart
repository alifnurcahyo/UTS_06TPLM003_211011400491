import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 134, 15, 15),
      ),
      home: const MyHomePage(title: 'SHOES ALIF NURCAHYO'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(title),
            const Spacer(), // Spacer untuk menjaga jarak
            CircleAvatar(
              radius: 20, // Ukuran radius avatar
              backgroundColor: Colors.grey[300], // Warna latar belakang avatar
              child: const Icon(
                Icons.person,
                color: Colors.black, // Warna ikon avatar
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15.0),
        children: [
          ShoeCard(
            imageUrl:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEyjLKF44QlIV7IZMY_rl7N8AFm3EObb6rHA&s",
            shoeName: 'Nike Invinity',
            shoePrice: 'RP. 1.000.000',
            backgroundColor:
                Colors.purple.withOpacity(0.6), // Background ungu lembut
          ),
          ShoeCard(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8qrw1Rw8Xv3FYoHoCdLm3lQaNhsnBxXssUg&s',
            shoeName: 'Nike Running Revolution',
            shoePrice: 'Rp. 1.500.000',
            backgroundColor: Color.fromARGB(255, 170, 212, 0)
                .withOpacity(0.6), // Background yellow
          ),
          ShoeCard(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5I7wrlTikcSuxvzKIXc_ftYAHO_37OT3dKQ&s',
            shoeName: 'Nike Running quest',
            shoePrice: 'RP. 2.000.000',
            backgroundColor: const Color.fromARGB(255, 0, 212, 64)
                .withOpacity(0.6), // Background green
          ),
          ShoeCard(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS34lNcSXolYqzy7Z5Xi8l9BCaGgujTCMPhkg&s',
            shoeName: 'Nike Running Air Zoom ',
            shoePrice: 'RP. 3.000.000',
            backgroundColor: Colors.cyan.withOpacity(0.6), // Background blue
          ),
        ],
      ),
    );
  }
}

class ShoeCard extends StatelessWidget {
  final String imageUrl;
  final String shoeName;
  final String shoePrice;
  final Color backgroundColor;

  const ShoeCard({
    super.key,
    required this.imageUrl,
    required this.shoeName,
    required this.shoePrice,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // Column 1: Name and price
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shoeName,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    shoePrice,
                    style: const TextStyle(
                      fontSize: 16,
                      color:
                          Color.fromARGB(255, 116, 12, 12), // Warna teks putih
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16.0), // Spacer
            // Column 2: Image
            SizedBox(
              width: 100,
              height: 100,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
