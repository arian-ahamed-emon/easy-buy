import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text('Notifications'),
      ),
      body:
          const Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text(
            'No notification hare',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ]),
    );
  }
}
