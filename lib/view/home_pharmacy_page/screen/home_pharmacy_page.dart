import 'package:flutter/material.dart';
import 'package:medi_link/core/height_manager.dart';

import '../../../core/route_manager.dart';

class HomePharmacyPage extends StatelessWidget {
  const HomePharmacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ================= Header =================
            Container(
              height: HeightManager.h150,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color(0xFF3B82F6),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(28),
                  bottomRight: Radius.circular(28),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: HeightManager.h20,),
                      const Text(
                        'HealthCare Pharmacy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Dashboard',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const Icon(Icons.menu, color: Colors.white),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // ================= Stats =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: const [
                  StatBox(
                    title: 'Sales',
                    value: '\$12,450',
                    icon: Icons.attach_money,
                  ),
                  StatBox(
                    title: 'Orders',
                    value: '24',
                    icon: Icons.shopping_bag,
                  ),
                  StatBox(
                    title: 'Products',
                    value: '342',
                    icon: Icons.inventory_2,
                  ),
                  StatBox(
                    title: 'Donations',
                    value: '18',
                    icon: Icons.favorite,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // ================= Actions =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children:  [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesNames.addMedicinePharmacy);
                    },
                    child: ActionBox(
                      text: 'Add Medicine',
                      icon: Icons.add_circle,
                      isPrimary: true,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesNames.viewOrdersPharmacy);
                    },
                    child: ActionBox(
                      text: 'View Orders',
                      icon: Icons.receipt_long,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesNames.medicineInventoryPage);
                    },
                    child: ActionBox(
                      text: 'Medicines',
                      icon: Icons.medication,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesNames.donationPharmacyPage);
                    },
                    child: ActionBox(
                      text: 'Donations',
                      icon: Icons.volunteer_activism,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // ================= Orders =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: const [
                  OrderBox(),
                  OrderBox(),
                  OrderBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ================= Stat Box =================
class StatBox extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const StatBox({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: const Color(0xFF3B82F6), size: 26),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

// ================= Action Box =================
class ActionBox extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isPrimary;

  const ActionBox({
    super.key,
    required this.text,
    required this.icon,
    this.isPrimary = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isPrimary ? const Color(0xFF3B82F6) : const Color(0xFFEFF4FF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
            color: isPrimary ? Colors.white : const Color(0xFF3B82F6),
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(
              color: isPrimary ? Colors.white : const Color(0xFF3B82F6),
            ),
          ),
        ],
      ),
    );
  }
}

// ================= Order Box =================
class OrderBox extends StatelessWidget {
  const OrderBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(Icons.receipt, color: Color(0xFF3B82F6)),
              SizedBox(width: 8),
              Text('Order #12345'),
            ],
          ),
          const Text(
            '\$30.00',
            style: TextStyle(
              color: Color(0xFF3B82F6),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
