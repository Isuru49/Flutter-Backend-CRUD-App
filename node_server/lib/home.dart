import 'package:flutter/material.dart';
import 'package:node_server/create.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Node_Backend_App")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CreateData()),
                );
              },
              child: const Text("CREATE"),
            ),
            const SizedBox(height: 10), // Reduce the height between buttons
            ElevatedButton(onPressed: () {}, child: const Text("READ")),

            const SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: const Text("UPLOAD")),

            const SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: const Text("DELETE")),
          ],
        ),
      ),
    );
  }
}
