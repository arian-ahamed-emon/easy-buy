import 'package:easy_buy/ui/screens/profile_about_screen.dart';
import 'package:easy_buy/ui/screens/profile_last_seen_product_screen.dart';
import 'package:easy_buy/ui/screens/profile_notification_setting_screen.dart';
import 'package:easy_buy/ui/screens/profile_order_list_screen.dart';
import 'package:easy_buy/ui/screens/profile_payment_method_screen.dart';
import 'package:easy_buy/ui/screens/profile_privacy_policy_screen.dart';
import 'package:easy_buy/ui/screens/profile_set_delivery_screen.dart';
import 'package:easy_buy/ui/screens/profile_terms_and_conditions_screen.dart';
import 'package:easy_buy/ui/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

class MainProfileScreen extends StatefulWidget {
  const MainProfileScreen({super.key});

  @override
  State<MainProfileScreen> createState() => _MainProfileScreenState();
}

class _MainProfileScreenState extends State<MainProfileScreen> {
  final List<Map<String, dynamic>> options = [
    {'title': 'Set Address For Delivery', 'screen': const SetDeliveryScreen()},
    {'title': 'Order List', 'screen': const OrderListScreen()},
    {'title': 'Payment Method', 'screen': const PaymentMethodScreen()},
    {'title': 'Last Seen Product', 'screen': const LastSeenProductScreen()},
    {'title': 'Notification Setting', 'screen': const NotificationSettingScreen()},
    {'title': 'About', 'screen': const AboutScreen()},
    {'title': 'Terms and Conditions', 'screen': const TermsAndConditionsScreen()},
    {'title': 'Privacy Policy', 'screen': const PrivacyPolicyScreen()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.email_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(17),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {},
                child: const Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          'assets/images/profile.jpg'), // Add your profile image path
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Emon Hasan',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Account information >',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: options.length,
                itemBuilder: (context, index) {
                  final option = options[index];
                  return Column(
                    children: [
                      ListTile(
                        title: Text(option['title']),
                        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => option['screen'],
                            ),
                          );
                        },
                      ),
                      const Divider(),
                      // This creates the line below each ListTile
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: _onTapSignOutButton,
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.power_settings_new_outlined,
                    color: Colors.red,
                  ),
                  // Icon
                  SizedBox(width: 8),
                  // Spacing between icon and text
                  Text(
                    'Sign Out',
                    style: TextStyle(color: Colors.red),
                  ),
                  // Text
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onTapSignOutButton() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const SignInScreen(),
        ),
        (_) => false);
  }
}
