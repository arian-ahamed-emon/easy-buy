import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatefulWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  State<TermsAndConditionsScreen> createState() =>
      _TermsAndConditionsScreenState();
}

class _TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Conditions'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Terms and Conditions',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Welcome to Easy Buy!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'These terms and conditions outline the rules and regulations for the use of Easy Buy’s e-commerce platform. '
                  'By accessing this app, we assume you accept these terms and conditions. Do not continue to use Easy Buy if you '
                  'do not agree to all the terms and conditions stated here.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            Text(
              '1. User Responsibilities',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'As a user of this platform, you agree to provide accurate information during registration and keep your '
                  'account credentials secure. You must not engage in fraudulent or unlawful activities through this app.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            Text(
              '2. Purchases and Payments',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'All purchases made on Easy Buy are subject to product availability and price verification. '
                  'We accept major payment methods, and transactions are processed securely. Refunds and cancellations are '
                  'subject to our refund policy.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            Text(
              '3. Delivery Policy',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'We strive to ensure timely delivery of products. However, delivery timelines may vary based on location and logistics. '
                  'In case of delays, we will notify you via email or phone.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            Text(
              '4. Intellectual Property',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'All content on this app, including text, graphics, and logos, is the property of Easy Buy. You may not copy, distribute, '
                  'or reproduce any content without prior permission.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            Text(
              '5. Limitation of Liability',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Easy Buy shall not be held liable for any damages arising from the use of this platform, including but not limited to '
                  'loss of data, profits, or other intangible losses.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            Text(
              '6. Changes to Terms',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'We reserve the right to update or modify these terms and conditions at any time without prior notice. '
                  'It is your responsibility to review these terms periodically.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            Text(
              'Contact Us',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'If you have any questions about these terms and conditions, please contact us at support@easybuy.com.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

