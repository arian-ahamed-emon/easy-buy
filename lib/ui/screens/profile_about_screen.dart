import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // App Logo
            Center(
              child: Image.asset(
                'assets/images/logo.png', // Replace with your app's logo
                height: 200,
                width: 230,
              ),
            ),
            const SizedBox(height: 20),

            // App Name and Tagline
            const Center(
              child: Column(
                children: [
                  Text(
                    'Easy Buy',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Your one-stop shop for all your needs',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // About Description
            const Text(
              'About Us',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Easy Buy is a leading e-commerce platform offering a wide range of products, '
                  'from electronics and fashion to groceries and home essentials. Our mission '
                  'is to provide a seamless shopping experience with great value and exceptional service.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Mission Statement
            const Text(
              'Our Mission',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'To empower customers by providing convenient access to quality products '
                  'at competitive prices, all while ensuring a delightful shopping experience.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Contact Information
            const Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'If you have any questions, feel free to reach out to us:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Icon(Icons.email, color: Colors.blue),
                SizedBox(width: 8),
                Text('support@easybuy.com', style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Icon(Icons.phone, color: Colors.blue),
                SizedBox(width: 8),
                Text('+8801328123424', style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 20),

            // Social Media
            const Text(
              'Follow Us',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                IconButton(
                  icon: Image.asset('assets/icons/fb.png',height: 50,width: 80,),
                  onPressed: () {

                  },
                ),
                IconButton(
                  icon: Image.asset('assets/icons/ph.png',height: 50,width: 80,),
                  onPressed: () {

                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
