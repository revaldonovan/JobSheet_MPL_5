import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nama 5 Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> mahasiswa = [
      {'nama': 'Linen Alif Nandanto', 'nim': 'STI202102328'},
      {'nama': 'faisal Rahman Hikmatiar', 'nim': 'STI202102351'},
      {'nama': 'Revaldo Novandhika', 'nim': 'STI202102353'}, 
      {'nama': 'Wahyu Triyono', 'nim': 'STI202102355'},
      {'nama': 'Julia Kurnia Mubarokah', 'nim': 'STI202102363'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nama 5 Mahasiswa '), 
        backgroundColor: Colors.blue
      ),
      body: ListView.builder(
        itemCount: mahasiswa.length,
        itemBuilder: (context, index) {
          final item = mahasiswa[index];
          final isNamaSaya = item['nama'] == 'Revaldo Novandhika';

          return Container(
            color: isNamaSaya ? Colors.lightGreen : Colors.white, 
            child: ListTile(
              title: Text(item['nama']!),
              subtitle: Text(item['nim']!),
            ),
          );
        },
      ),
    );
  }
}

