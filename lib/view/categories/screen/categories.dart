import 'package:flutter/material.dart';

import '../../../core/route_manager.dart';

class CategoriesPage extends StatelessWidget {
  CategoriesPage({super.key});

  final List<Map<String, String>> categories = [
    {"name": "Medicines", "products": "1240", "icon": "💊"},
    {"name": "Health Devices", "products": "350", "icon": "🌡️"},
    {"name": "Medical Supplies", "products": "580", "icon": "🩺"},
    {"name": "Vaccines", "products": "120", "icon": "💉"},
    {"name": "Vitamins & Supplements", "products": "890", "icon": "❤️"},
    {"name": "First Aid", "products": "420", "icon": "➕"},
    {"name": "Eye Care", "products": "180", "icon": "👁️"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
        backgroundColor: Colors.blue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade50,
                child: Text(category["icon"]!, style: const TextStyle(fontSize: 24)),
              ),
              title: Text(category["name"]!),
              subtitle: Text("${category["products"]} products"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, RoutesNames.productsPage);
              },
            ),
          );
        },
      ),
    );
  }
}
