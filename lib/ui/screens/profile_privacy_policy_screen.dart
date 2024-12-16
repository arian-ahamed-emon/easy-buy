import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),

            // Introduction
            Text(
              'Welcome to Easy Buy!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Your privacy is critically important to us. This privacy policy explains how we collect, use, and protect '
                  'your information when you use our e-commerce platform.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            // Information Collection
            Text(
              '1. Information We Collect',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'When you use Easy Buy, we may collect the following types of information:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              '- Personal Information: Name, email address, phone number, and shipping address.\n'
                  '- Payment Information: Credit card details, transaction history.\n'
                  '- Usage Data: Information about how you interact with our app, such as browsing activity and preferences.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            // Use of Information
            Text(
              '2. How We Use Your Information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'We use the collected information to:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              '- Process your orders and manage transactions.\n'
                  '- Improve our services and personalize your shopping experience.\n'
                  '- Send you notifications about your orders, promotions, and updates.\n'
                  '- Ensure the security of our platform and detect fraud.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            // Sharing Information
            Text(
              '3. Sharing Your Information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'We may share your information with third parties in the following situations:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              '- With service providers who assist in payment processing, delivery, or app analytics.\n'
                  '- When required by law or to comply with legal obligations.\n'
                  '- To protect our rights, users, and platform against fraudulent activities.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            // Security Measures
            Text(
              '4. Security of Your Information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'We implement industry-standard security measures to protect your data. However, no system is completely secure, '
                  'and we cannot guarantee absolute security.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            // User Rights
            Text(
              '5. Your Rights',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'You have the right to access, update, or delete your personal information. To exercise these rights, please contact us at support@easybuy.com.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            // Changes to Policy
            Text(
              '6. Changes to This Privacy Policy',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'We may update this policy from time to time. Any changes will be posted on this page, and you are encouraged to review this policy periodically.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            // Contact Information
            Text(
              'Contact Us',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'If you have any questions about this privacy policy, you can reach us at support@easybuy.com.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
