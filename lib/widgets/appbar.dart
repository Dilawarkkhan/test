import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
        title: const Row(
          children: [
            Icon(
              Icons.notes_sharp,
              color: Colors.white,
              size: 32,
            ),
            SizedBox(width: 8),
            Text(
              'User Notes',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 182, 44, 6),
        elevation: 0,
      );
  }
}