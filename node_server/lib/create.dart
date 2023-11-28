import "package:flutter/material.dart";

class CreateData extends StatefulWidget {
  const CreateData({super.key});

  @override
  State<CreateData> createState() => _CreateDataState();
}

class _CreateDataState extends State<CreateData> {
  var namecontroller = TextEditingController();
  var pricecontroller = TextEditingController();
  var desccontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: namecontroller,
              decoration: const InputDecoration(
                hintText: "Name Here",
              ),
            ),
              TextField(
              controller: pricecontroller,
              decoration: const InputDecoration(
                hintText: "Price Here",
              ),
            ),
            TextField(
              controller: desccontroller,
              decoration: const InputDecoration(
                hintText: "Desc Here",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {} , child: const Text('Create Data'))
          ],
        )
      ),
    );
  }
}
