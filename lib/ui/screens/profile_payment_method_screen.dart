import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  // Variable to store the selected payment method
  String _selectedPaymentMethod = 'Credit Card';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Methods'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select a Payment Method',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // Credit Card Option
            ListTile(
              leading: const Icon(Icons.credit_card, color: Colors.blue),
              title: const Text('Credit Card'),
              subtitle: const Text('Pay with Visa, MasterCard, or AMEX'),
              trailing: Radio<String>(
                value: 'Credit Card',
                groupValue: _selectedPaymentMethod,
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value!;
                  });
                },
              ),
            ),
            const Divider(),

            // Debit Card Option
            ListTile(
              leading: const Icon(Icons.payment, color: Colors.green),
              title: const Text('Debit Card'),
              subtitle: const Text('Pay directly from your bank account'),
              trailing: Radio<String>(
                value: 'Debit Card',
                groupValue: _selectedPaymentMethod,
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value!;
                  });
                },
              ),
            ),
            const Divider(),

            // PayPal Option
            ListTile(
              leading: const Icon(Icons.account_balance_wallet, color: Colors.orange),
              title: const Text('PayPal'),
              subtitle: const Text('Use your PayPal account'),
              trailing: Radio<String>(
                value: 'PayPal',
                groupValue: _selectedPaymentMethod,
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value!;
                  });
                },
              ),
            ),
            const Divider(),

            // Cash on Delivery Option
            ListTile(
              leading: const Icon(Icons.local_shipping, color: Colors.brown),
              title: const Text('Cash on Delivery'),
              subtitle: const Text('Pay in cash when you receive your order'),
              trailing: Radio<String>(
                value: 'Cash on Delivery',
                groupValue: _selectedPaymentMethod,
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value!;
                  });
                },
              ),
            ),
            const Divider(),

            // Google Pay Option
            ListTile(
              leading: const Icon(Icons.g_mobiledata, color: Colors.blueAccent),
              title: const Text('Google Pay'),
              subtitle: const Text('Pay using your Google Pay account'),
              trailing: Radio<String>(
                value: 'Google Pay',
                groupValue: _selectedPaymentMethod,
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value!;
                  });
                },
              ),
            ),
            const Divider(),

            // Selected Payment Method Display
            const SizedBox(height: 20),
            Center(
              child: Text(
                'Selected Payment Method: $_selectedPaymentMethod',
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
