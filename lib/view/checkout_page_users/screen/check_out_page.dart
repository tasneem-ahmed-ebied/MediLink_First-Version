import 'package:flutter/material.dart';

import '../../../core/route_manager.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  String selectedDelivery = 'home';
  String selectedPayment = 'card';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF2B80FF),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Checkout',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _buildSectionCard(
              title: 'Delivery Method',
              icon: Icons.local_shipping_outlined,
              child: Column(
                children: [
                  _buildSelectableOption(
                    id: 'home',
                    title: 'Home Delivery',
                    subtitle: 'Delivered to your address',
                    trailing: '\$2.99',
                    icon: Icons.home_outlined,
                    groupValue: selectedDelivery,
                    onChanged: (val) => setState(() => selectedDelivery = val!),
                  ),
                  const SizedBox(height: 12),
                  _buildSelectableOption(
                    id: 'pickup',
                    title: 'Pick up from Pharmacy',
                    subtitle: 'Collect from nearest pharmacy',
                    trailing: 'Free',
                    icon: Icons.location_on_outlined,
                    groupValue: selectedDelivery,
                    onChanged: (val) => setState(() => selectedDelivery = val!),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            _buildSectionCard(
              title: 'Delivery Address',
              icon: Icons.location_on_outlined,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('123 Main Street', style: TextStyle(fontWeight: FontWeight.w500)),
                  const Text('New York, NY 10001', style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: const Text('Change Address', style: TextStyle(color: Color(0xFF4A89F0))),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            _buildSectionCard(
              title: 'Payment Method',
              icon: Icons.payment_outlined,
              child: Column(
                children: [
                  _buildSelectableOption(
                    id: 'card',
                    title: 'Credit/Debit Card',
                    subtitle: '**** **** **** 4242',
                    groupValue: selectedPayment,
                    onChanged: (val) => setState(() => selectedPayment = val!),
                  ),
                  const SizedBox(height: 12),
                  _buildSelectableOption(
                    id: 'cod',
                    title: 'Cash on Delivery',
                    groupValue: selectedPayment,
                    onChanged: (val) => setState(() => selectedPayment = val!),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            _buildSectionCard(
              title: 'Order Summary',
              child: Column(
                children: [
                  _buildSummaryRow('Subtotal', '\$27.48'),
                  _buildSummaryRow('Delivery', '\$2.99'),
                  const Divider(height: 30),
                  _buildSummaryRow('Total', '\$30.47', isTotal: true),
                ],
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                    Navigator.pushNamed(context, RoutesNames.verifiedCheckOutPage);

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4A89F0),
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  elevation: 0,
                ),
                child: const Text(
                  'Place Order - \$30.47',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionCard({required String title, IconData? icon, required Widget child}) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE1EDFF)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (icon != null) Icon(icon, size: 20, color: const Color(0xFF4A89F0)),
              if (icon != null) const SizedBox(width: 8),
              Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF1A4A8F))),
            ],
          ),
          const SizedBox(height: 15),
          child,
        ],
      ),
    );
  }

  Widget _buildSelectableOption({
    required String id,
    required String title,
    String? subtitle,
    String? trailing,
    IconData? icon,
    required String groupValue,
    required ValueChanged<String?> onChanged,
  }) {
    bool isSelected = id == groupValue;
    return GestureDetector(
      onTap: () => onChanged(id),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFF0F6FF) : const Color(0xFFF8FAFF),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: isSelected ? const Color(0xFF4A89F0) : Colors.transparent),
        ),
        child: Row(
          children: [
            Radio<String>(
              value: id,
              groupValue: groupValue,
              onChanged: onChanged,
              activeColor: const Color(0xFF4A89F0),
            ),
            if (icon != null) Icon(icon, size: 20, color: Colors.blueGrey),
            if (icon != null) const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
                  if (subtitle != null) Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ),
            if (trailing != null) Text(trailing, style: const TextStyle(color: Color(0xFF4A89F0), fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryRow(String label, String value, {bool isTotal = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: isTotal ? 18 : 14, color: isTotal ? Colors.black : Colors.grey)),
          Text(value, style: TextStyle(fontSize: isTotal ? 20 : 14, fontWeight: isTotal ? FontWeight.bold : FontWeight.normal, color: isTotal ? const Color(0xFF4A89F0) : Colors.black)),
        ],
      ),
    );
  }
}