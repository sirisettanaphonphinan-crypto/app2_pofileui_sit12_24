import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // 1) AppBar: ไอดีแอคเคาท์ + ไอคอนเมนู
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          'mark.siriset',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 2) ส่วนหัวโปรไฟล์: รูป + สถิติ 3 ช่อง
              Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/6921829189436.jpg'),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Column(
                          children: [
                            Text('3',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            Text('โพสต์'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('3',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            Text('ผู้ติดตาม'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('7',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            Text('กำลังติดตาม'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // 3) ชื่อและแคปชัน
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ศิริเศรษฐ ธนพรภินันท์',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text('นักศึกษาแผนกเทคโนโลยีสารสนเทศ'),
                  Text('ชอบเขียนโค้ด 💙'),
                ],
              ),
              const SizedBox(height: 12),

              // 4) ปุ่มติดตาม (ทึบ) + ปุ่มข้อความ (มีเส้นขอบ)
              Row(
                children: [
                  Expanded(
                    child: FilledButton(
                      onPressed: () {},
                      child: const Text('ติดตาม'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('ข้อความ'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // 5) แถบไอคอน
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.grid_on, size: 28),
                  Icon(Icons.person_pin_outlined, size: 28),
                ],
              ),
              const SizedBox(height: 12),

              // 6) แกลเลอรีภาพ 3 คอลัมน์
              GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Image.network(
                    'https://picsum.photos/seed/flutter1/400/400',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://picsum.photos/seed/flutter2/400/400',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://picsum.photos/seed/flutter3/400/400',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}