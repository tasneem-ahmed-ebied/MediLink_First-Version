import 'package:flutter/material.dart';
import 'package:medi_link/core/route_manager.dart';

class ViewOrdersPharmacy extends StatelessWidget {
  const ViewOrdersPharmacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF2B80FF),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pushNamed(context, RoutesNames.homePharmacyPage),
        ),
        title: const Text(
          'Incoming Orders',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        children: [
          _buildOrderCard(
            orderId: '#12345',
            name: 'John Doe',
            phone: '+1 234-567-8901',
            itemCount: 3,
            price: '\$30.47',
            timeAgo: '10 mins ago',
          ),
          _buildOrderCard(
            orderId: '#12342',
            name: 'Alice Williams',
            phone: '+1 234-567-8904',
            itemCount: 1,
            price: '\$18.75',
            timeAgo: '2 hours ago',
          ),
        ],
      ),
    );
  }

  // Single Order Card Widget
  Widget _buildOrderCard({
    required String orderId,
    required String name,
    required String phone,
    required int itemCount,
    required String price,
    required String timeAgo,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE8EEF5), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order $orderId',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1A4A8F),
                ),
              ),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A89F0),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  name,
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                  )
              ),
              Row(
                children: [
                  const Icon(Icons.access_time, size: 16, color: Colors.grey),
                  const SizedBox(width: 4),
                  Text(timeAgo, style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(phone, style: TextStyle(color: Colors.grey[600])),
          const SizedBox(height: 12),
          Text('$itemCount items', style: TextStyle(color: Colors.grey[500])),
          const SizedBox(height: 20),
          Row(
            children: [
              // Accept Button
              Expanded(
                flex: 6,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.check_circle_outline, size: 18, color: Colors.white),
                  label: const Text('Accept & Add Receiver'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4A89F0),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              // Reject Button
              Expanded(
                flex: 4,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.close, size: 18, color: Color(0xFF4A89F0)),
                  label: const Text('Reject'),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: const Color(0xFF4A89F0),
                    side: const BorderSide(color: Color(0xFFE0E6F0)),
                    backgroundColor: const Color(0xFFF8FAFF),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}