import 'package:flutter/material.dart';
import 'package:test_task/home_screen.dart';
import 'package:test_task/widgets/appbar.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  late final TextEditingController _descriptionText;

  @override
  void initState() {
    _descriptionText = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _descriptionText.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(0, 65),
        child: CustomAppbar(),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              controller: _descriptionText,
              decoration: const InputDecoration(
                labelText: 'Write description',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 182, 44, 6),
              ), // Replace with your desired color
            ),
            child: const Text(
              'Save Text',
            ),
          ),
        ],
      ),
    );
  }
}
