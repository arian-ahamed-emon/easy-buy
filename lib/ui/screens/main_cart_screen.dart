import 'package:flutter/material.dart';

class MainCartScreen extends StatefulWidget {
  const MainCartScreen({super.key});

  @override
  State<MainCartScreen> createState() => _MainCartScreenState();
}

class _MainCartScreenState extends State<MainCartScreen> {

  final List<Map<String, dynamic>> products = [
    {
      'image': 'assets/images/watch.jpg',
      'title': 'Apple Watch Ultra 2',
      'price': 700.0,
      'quantity': 1
    },
    {
      'image': 'assets/images/phone.jpg',
      'title': 'Asus ROG Phone 8',
      'price': 1400.0,
      'quantity': 1
    },
    {
      'image': 'assets/images/router.jpeg',
      'title': 'TP-Link TL-WR840N Wireless Router',
      'price': 15.0,
      'quantity': 2
    },
    {
      'image': 'assets/images/flash3.jpeg',
      'title': 'Jordan 1 Bred',
      'price': 11.0,
      'quantity': 3
    },
  ];

  double get totalPrice {
    return products.fold(0, (sum, item) => sum + (item['price'] * item['quantity']));
  }

  void _incrementQuantity(int index) {
    setState(() {
      products[index]['quantity']++;
    });
  }

  void _decrementQuantity(int index) {
    setState(() {
      if (products[index]['quantity'] > 1) {
        products[index]['quantity']--;
      }
    });
  }

  void _removeProduct(int index) {
    setState(() {
      products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart',style: TextStyle(fontSize: 18),),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                labelText: 'Enter Coupon Code',
                prefixIcon: const Icon(Icons.card_giftcard, color: Colors.grey),
                suffixIcon: const Icon(Icons.check_circle, color: Colors.green),
              ),
            ),
          ),
          // In Total and Button Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'In Total: \$${totalPrice.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Button functionality here
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Checkout button clicked!')),
                    );
                  },
                  child: const Text('Checkout'),
                ),
              ],
            ),
          ),
          // List of Products
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          product['image'],
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product['title'],
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '\$${product['price']}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () => _decrementQuantity(index),
                              icon: const Icon(Icons.remove),
                            ),
                            Text(
                              '${product['quantity']}',
                              style: const TextStyle(fontSize: 16),
                            ),
                            IconButton(
                              onPressed: () => _incrementQuantity(index),
                              icon: const Icon(Icons.add),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () => _removeProduct(index),
                          icon: const Icon(Icons.delete, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
