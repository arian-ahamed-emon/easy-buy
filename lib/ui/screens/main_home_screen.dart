import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'message_box_screen.dart';
import 'notification_screen.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  final List<String> carouselImages = [
    'assets/images/slider1.png',
    'assets/images/slider3.jpg',
    'assets/images/slider2.jpg',
    'assets/images/slider5.png',
  ];

  final List<Map<String, String>> categories = [
    {'title': 'Electronics', 'image': 'assets/icons/electronics.png'},
    {'title': 'Fashion', 'image': 'assets/icons/fashion.png'},
    {'title': 'Home', 'image': 'assets/icons/home.png'},
    {'title': 'Beauty', 'image': 'assets/icons/beauty.png'},
    {'title': 'Toys', 'image': 'assets/icons/toys.png'},
    {'title': 'Sports', 'image': 'assets/icons/sports.png'},
    {'title': 'Books', 'image': 'assets/icons/books.png'},
    {'title': 'Health', 'image': 'assets/icons/health.png'},
  ];

  final List<Map<String, dynamic>> flashSaleProducts = [
    {'image': 'assets/images/flash1.jpeg', 'title': 'Apple - MacBook Air 13.3', 'price': '1500', 'discount': '15%'},
    {'image': 'assets/images/flash2.png', 'title': 'Nikon announces Z30', 'price': '720', 'discount': '10%'},
    {'image': 'assets/images/flash3.jpeg', 'title': 'Jordan - 2', 'price': '14', 'discount': '20%'},
    {'image': 'assets/images/flash4.jpg', 'title': 'Gaming Headphone', 'price': '12', 'discount': '25%'},
    {'image': 'assets/images/flash5.jpeg', 'title': 'Electronic Blender', 'price': '17', 'discount': '30%'},
    {'image': 'assets/images/flash6.jpeg', 'title': 'Gaming Mouse', 'price': '11', 'discount': '5%'},
    {'image': 'assets/images/flash7.jpeg', 'title': 'Black T-Shirt', 'price': '13', 'discount': '50%'},
  ];

  final List<Map<String, dynamic>> recommendedProducts = [
    {
      'image': 'assets/images/products/1.png',
      'title': 'Stylish Ladies Shoes',
      'price': '10',
      'rating': 4.5,
      'totalSells': '50',
    },

    {
      'image': 'assets/images/products/2.png',
      'title': 'Leu Stylish Watch - For Ladies',
      'price': '60',
      'rating': 4.5,
      'totalSells': '333',
    },
    {
      'image': 'assets/images/products/3.png',
      'title': 'Ladies Bag - Stylish',
      'price': '70',
      'rating': 4.5,
      'totalSells': '350',
    },
    {
      'image': 'assets/images/products/4.png',
      'title': 'Lexus Site Bag - For girls',
      'price': '80',
      'rating': 4.5,
      'totalSells': '400',
    },
    {
      'image': 'assets/images/products/5.png',
      'title': 'Site Bag',
      'price': '90',
      'rating': 4.5,
      'totalSells': '450',
    },
    {
      'image': 'assets/images/products/6.png',
      'title': 'Lades shoes - stylish',
      'price': '100',
      'rating': 4.5,
      'totalSells': '500',
    },
    {
      'image': 'assets/images/products/7.png',
      'title': 'Smart watch - e99',
      'price': '110',
      'rating': 4.5,
      'totalSells': '550',
    },
    {
      'image': 'assets/images/products/8.png',
      'title': 'T-shirt for boys',
      'price': '120',
      'rating': 4.5,
      'totalSells': '600',
    },
    {
      'image': 'assets/images/products/9.png',
      'title': 'Stylish Pant - For Mens',
      'price': '130',
      'rating': 4.5,
      'totalSells': '650',
    },
    {
      'image': 'assets/images/products/10.png',
      'title': 'Stylish Pants for Men',
      'price': '140',
      'rating': 4.5,
      'totalSells': '700',
    },
    {
      'image': 'assets/images/products/11.png',
      'title': 'T-shirt - for boys',
      'price': '150',
      'rating': 4.5,
      'totalSells': '750',
    },
    {
      'image': 'assets/images/products/12.png',
      'title': 'Nike shoes - stylish',
      'price': '160',
      'rating': 4.5,
      'totalSells': '800',
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepOrangeAccent,
        title: Row(
          children: [
            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Product',
                    hintStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: onTapMessageButton,
            icon: const Icon(
              Icons.email_rounded,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: onTapNotificationButton,
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const  SizedBox(height: 20,),
            CarouselSlider(
              items: carouselImages.map((image) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
              ),
            ),
            const SizedBox(height: 20),

            // Categories Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Categories',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            SizedBox(height: 20,),
            GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return Column(
                  children: [
                    Image.asset(
                      category['image']!,
                      height: 50,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      category['title']!,
                      style: const TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 20),

            // Flash Sale Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Flash Sale',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: flashSaleProducts.length,
                itemBuilder: (context, index) {
                  final product = flashSaleProducts[index];
                  return Container(
                    width: 150,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                              child: Image.asset(
                                product['image']!,
                                height: 100,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product['title']!,
                                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                  ),
                                  Text('\$${product['price']}'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 5,
                          right: 5,
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              product['discount']!,
                              style: const TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            // Recommended Products Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Recommended Products',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.75,
              ),
              itemCount: recommendedProducts.length,
              itemBuilder: (context, index) {
                final product = recommendedProducts[index];
                return Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          product['image']!,
                          height: 175,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        product['title']!,
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text('\$${product['price']}'),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                          Text('${product['rating']}'),
                        ],
                      ),
                      Text('${product['totalSells']} sold'),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void onTapNotificationButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const NotificationScreen(),
      ),
    );
  }

  void onTapMessageButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MessageBoxScreen(),
      ),
    );
  }
}
