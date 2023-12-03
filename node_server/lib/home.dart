import 'package:flutter/material.dart';
import 'package:node_server/create.dart';
import 'package:node_server/fetch.dart';

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
        title: const Center(
            child: Text(
          "Node_Backend_App",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.blue,
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
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.lightBlue, // Set the background color to blue
              ),
              child: const Text(
                "CREATE",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10), // Reduce the height between buttons
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FetchData()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                ),
                child: const Text(
                  " READ   ",
                  style: TextStyle(color: Colors.white),
                )),

            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                ),
                child: const Text(
                  "UPLOAD",
                  style: TextStyle(color: Colors.white),
                )),

            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                ),
                child: const Text(
                  "DELETE",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
