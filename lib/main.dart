import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Details App',
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // profile details (change these to your own)
  String name = 'Diluka';
  String email = 'diluka.w@nsbm.ac.lk';
  int points = 0;

  // runs when the + button is pressed
  void addPoints() {
    setState(() {
      points = points + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
        backgroundColor: Colors.indigo[900],
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // profile picture
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 60),
              ),
            ),
            const SizedBox(height: 15),
            const Divider(color: Colors.black, thickness: 1),
            const SizedBox(height: 15),

            // name
            const Text('Name', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Text(name),
            const SizedBox(height: 20),

            // email
            const Text('Email', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(Icons.email, size: 18),
                const SizedBox(width: 8),
                Text(email),
              ],
            ),
            const SizedBox(height: 20),

            // points
            const Text('Points', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(Icons.star, size: 18),
                const SizedBox(width: 8),
                Text('$points'),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addPoints,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
