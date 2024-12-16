import 'package:flutter/material.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class Product {
  final String imageUrl;
  final String title;
  final double price;
  final double rating;
  final int sells;
  final bool isAvailable;

  Product({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.rating,
    required this.sells,
    required this.isAvailable,
  });
}

class _WishListScreenState extends State<WishListScreen> {
  final List<Product> products = [
    Product(
      imageUrl: 'assets/images/flash1.jpeg',
      title: 'Apple MacBook Pro 2020 Intel Core i9 9th Gen',
      price: 2200.00,
      rating: 4.5,
      sells: 120,
      isAvailable: true,
    ),
    Product(
      imageUrl: 'assets/images/flash2.png',
      title: 'Nikon D7500 Digital SLR Camera with AF-S DX',
      price: 1300.00,
      rating: 4.0,
      sells: 85,
      isAvailable: true,
    ),
    Product(
      imageUrl: 'assets/images/flash3.jpeg',
      title: 'Nike Air Jordan 1 x',
      price: 15.50,
      rating: 3.8,
      sells: 50,
      isAvailable: false,
    ),
    Product(
      imageUrl: 'assets/images/flash4.jpg',
      title: ' Gaming HeadPhone - 2x',
      price: 1400.99,
      rating: 4.9,
      sells: 77,
      isAvailable: true,
    ),
    Product(
      imageUrl: 'assets/images/flash5.jpeg',
      title: '2L Automatic Electric Blender',
      price: 18.99,
      rating: 4.2,
      sells: 90,
      isAvailable: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'WishList',
          style: TextStyle(fontSize: 16),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.email_rounded)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search Product',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          product.imageUrl,
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.title,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text('Price: \$${product.price.toStringAsFixed(2)}'),
                              const SizedBox(height: 4),
                              Text('Rating: ${product.rating} ★'),
                              const SizedBox(height: 4),
                              Text('${product.sells} Sale',style: TextStyle(color: Colors.grey),),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: product.isAvailable
                                        ? () {
                                      // Add to cart functionality
                                    }
                                        : null,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: product.isAvailable
                                          ? Colors.red
                                          : Colors.grey,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: Text(
                                      product.isAvailable
                                          ? 'Add to Shopping Cart'
                                          : 'Sold Out',
                                    ),
                                  ),
                                  SizedBox(width: 16,),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        products.removeAt(index);
                                      });
                                    },
                                    icon: const Icon(Icons.delete, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
