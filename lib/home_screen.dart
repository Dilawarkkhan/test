import 'package:flutter/material.dart';
import 'package:test_task/user_description_screen.dart';
import 'package:test_task/widgets/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(0, 65),
          child: CustomAppbar(),
        ),
        body: Stack(
          children: [
            const Center(
              child: Text('Add a new list'),
            ),
            Positioned(
              bottom: 16.0,
              right: 16.0,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListScreen(),
                    ),
                  );
                },
                backgroundColor: const Color.fromARGB(255, 182, 44, 6),
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ));
  }
}
