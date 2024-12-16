
import 'package:flutter/material.dart';

class LastSeenProductScreen extends StatefulWidget {
  const LastSeenProductScreen({super.key});

  @override
  State<LastSeenProductScreen> createState() => _LastSeenProductScreenState();
}

class _LastSeenProductScreenState extends State<LastSeenProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Last Seen Product'),
      ),

      );
  }
}
