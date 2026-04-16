import 'package:flutter/material.dart';

class MedicineInventoryPage extends StatelessWidget {
  const MedicineInventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          _buildHeader(context),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                const SizedBox(height: 20),
                _buildSummaryCard(),
                const SizedBox(height: 25),
                _buildSectionHeader(),
                const SizedBox(height: 15),
                _buildMedicineCard(
                  name: 'Paracetamol 500mg',
                  brand: 'PharmaCo',
                  price: '\$5.99',
                  stock: 150,
                  status: 'In Stock',
                ),
                _buildMedicineCard(
                  name: 'Amoxicillin 250mg',
                  brand: 'MedLife',
                  price: '\$12.5',
                  stock: 80,
                  status: 'In Stock',
                ),
                _buildMedicineCard(
                  name: 'Vitamin D3',
                  brand: 'HealthPlus',
                  price: '\$8.99',
                  stock: 120,
                  status: 'In Stock',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Header with Search Bar
  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 30),
      decoration: const BoxDecoration(
        color: Color(0xFF2B80FF),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(35)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
              const Text(
                'Medicine Inventory',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          TextField(
            decoration: InputDecoration(
              hintText: 'Search medicines...',
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(vertical: 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Summary Stats (Total, In Stock, Low Stock)
  Widget _buildSummaryCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE1EDFF)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatItem('5', 'Total', const Color(0xFF2B80FF)),
          _buildStatItem('4', 'In Stock', const Color(0xFF4CAF50)),
          _buildStatItem('1', 'Low Stock', const Color(0xFFE53935)),
        ],
      ),
    );
  }

  Widget _buildStatItem(String count, String label, Color color) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: color),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
      ],
    );
  }

  // Section Label and Add Button
  Widget _buildSectionHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'All Medicines',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF1A4A8F)),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add, size: 18),
          label: const Text('Add'),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF4A89F0),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 0,
          ),
        ),
      ],
    );
  }

  // Individual Medicine Card
  Widget _buildMedicineCard({
    required String name,
    required String brand,
    required String price,
    required int stock,
    required String status,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE1EDFF)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F6FF),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(Icons.medication_outlined, color: Color(0xFF4A89F0)),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Text(brand, style: const TextStyle(color: Colors.grey)),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Text(price, style: const TextStyle(color: Color(0xFF4A89F0), fontWeight: FontWeight.bold)),
                        const Text('  •  ', style: TextStyle(color: Colors.grey)),
                        Text('Stock: $stock', style: const TextStyle(color: Colors.grey, fontSize: 12)),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: const Color(0xFFEEF5FF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(status, style: const TextStyle(color: Color(0xFF4A89F0), fontSize: 10)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: _buildActionButton(Icons.edit_note_outlined, 'Edit', const Color(0xFFEEF5FF), const Color(0xFF4A89F0)),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: _buildActionButton(Icons.delete_outline, 'Delete', const Color(0xFFF5F8FF), const Color(0xFF4A89F0)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label, Color bg, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 18, color: color),
          const SizedBox(width: 4),
          Text(label, style: TextStyle(color: color, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}