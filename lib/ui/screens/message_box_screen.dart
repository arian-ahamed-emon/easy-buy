import 'package:flutter/material.dart';

class MessageBoxScreen extends StatefulWidget {
  const MessageBoxScreen({super.key});

  @override
  State<MessageBoxScreen> createState() => _MessageBoxScreenState();
}

class _MessageBoxScreenState extends State<MessageBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text(
          'Inbox',
        ),
      ),
      body:
          const Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text(
            'No message hare',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ]),
    );
  }
}
