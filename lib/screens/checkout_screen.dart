import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Shipping Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            // Add shipping details form fields
            const SizedBox(height: 20),
            const Text(
              'Payment Method',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            // Add payment method selection
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle checkout process
              },
              child: const Text('Place Order'),
            ),
          ],
        ),
      ),
    );
  }
}
