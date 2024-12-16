import 'package:flutter/material.dart';

class SetDeliveryScreen extends StatefulWidget {
  const SetDeliveryScreen({super.key});

  @override
  State<SetDeliveryScreen> createState() => _SetDeliveryScreenState();
}

class _SetDeliveryScreenState extends State<SetDeliveryScreen> {
  List<Map<String, String>> _addresses = [
    {
      'name': 'Office',
      'address': '123 Dhanghora Bus Stand, Raiganj, Sirajganj, 62704',
    },
    {
      'name': 'Home',
      'address': '456 Abudia, Charpara, RY,SG, 10001',
    },
  ];

  void _editAddress(int index) async {
    final result = await showDialog<Map<String, String>>(
      context: context,
      builder: (context) {
        final nameController = TextEditingController(text: _addresses[index]['name']);
        final addressController = TextEditingController(text: _addresses[index]['address']);
        return AlertDialog(
          title: const Text('Edit Address'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: addressController,
                decoration: const InputDecoration(labelText: 'Address'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop({
                  'name': nameController.text,
                  'address': addressController.text,
                });
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );

    if (result != null) {
      setState(() {
        _addresses[index] = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set Delivery Address'),
      ),
      body: ListView.builder(
        itemCount: _addresses.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.location_on, color: Colors.blue),
              title: Text(_addresses[index]['name']!),
              subtitle: Text(_addresses[index]['address']!),
              trailing: IconButton(
                icon: const Icon(Icons.edit, color: Colors.grey),
                onPressed: () => _editAddress(index),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _addresses.add({
              'name': 'New Address',
              'address': 'Enter new address details',
            });
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
