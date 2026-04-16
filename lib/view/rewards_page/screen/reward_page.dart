import 'package:flutter/material.dart';
import 'package:medi_link/core/route_manager.dart';

class RewardsPage extends StatelessWidget {
  const RewardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FF),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color(0xFF3B82F6),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(28),
                  bottomRight: Radius.circular(28),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children:  [
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, RoutesNames.homeUserPage);
                          },
                          child: Icon(Icons.arrow_back, color: Colors.white)),
                      SizedBox(width: 12),
                      Text(
                        'Points Store',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.star, color: Colors.yellow),
                            SizedBox(width: 8),
                            Text(
                              '850',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const Text(
                            'History',
                            style: TextStyle(
                              color: Color(0xFF3B82F6),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: const [
                  StoreItemCard(
                    icon: Icons.card_giftcard,
                    title: 'Paracetamol 500mg',
                    subtitle: '10 tablets pack',
                    points: '150 pts',
                    price: '\$5.99',
                  ),
                  StoreItemCard(
                    icon: Icons.card_giftcard,
                    title: 'Vitamin D3 Supplement',
                    subtitle: '30 capsules bottle',
                    points: '300 pts',
                    price: '\$12.99',
                  ),
                  StoreItemCard(
                    icon: Icons.local_offer,
                    title: '20% Off Next Purchase',
                    subtitle: 'Valid for 30 days',
                    points: '250 pts',
                    price: '\$10 value',
                  ),
                  StoreItemCard(
                    icon: Icons.local_offer,
                    title: 'Free Home Delivery',
                    subtitle: 'One-time use voucher',
                    points: '100 pts',
                    price: '',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StoreItemCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String points;
  final String price;

  const StoreItemCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.points,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 15,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 54,
            width: 54,
            decoration: BoxDecoration(
              color: const Color(0xFFEFF4FF),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, color: const Color(0xFF3B82F6)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  points,
                  style: const TextStyle(
                    color: Color(0xFF3B82F6),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (price.isNotEmpty)
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
              ],
            ),
          ),
          Container(
            padding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFF3B82F6),
              borderRadius: BorderRadius.circular(14),
            ),
            child:  InkWell(
              onTap: () {
                Navigator.pushNamed(context, RoutesNames.medicineDate);
              },
              child: Text(
                'view',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
