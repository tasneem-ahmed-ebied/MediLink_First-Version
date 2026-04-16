import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/color_manager.dart';

class ProductsPage extends StatefulWidget {
  final String category;
  const ProductsPage({super.key, required this.category});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final TextEditingController searchController = TextEditingController();

  final List<Map<String, dynamic>> products = [
    {"name": "Paracetamol 500mg", "company": "PharmaCo", "price": 5.99, "rating": 4.5, "inStock": true},
    {"name": "Amoxicillin 250mg", "company": "MedLife", "price": 12.5, "rating": 4.8, "inStock": true},
    {"name": "Vitamin D3", "company": "HealthPlus", "price": 8.99, "rating": 4.3, "inStock": true},
    {"name": "Ibuprofen 400mg", "company": "PharmaCo", "price": 7.25, "rating": 4.6, "inStock": false},
    {"name": "Aspirin 100mg", "company": "MedLife", "price": 4.5, "rating": 4.4, "inStock": true},
    {"name": "Cetirizine 10mg", "company": "HealthPlus", "price": 6.75, "rating": 4.2, "inStock": true},
  ];

  String searchText = "";

  @override
  Widget build(BuildContext context) {
    final filteredProducts = products.where((p) => p["name"].toString().toLowerCase().contains(searchText.toLowerCase())).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
        ),
        title: TextField(
          controller: searchController,
          decoration: InputDecoration(
            hintText: "Search medicines...",
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                searchController.clear();
                setState(() {
                  searchText = "";
                });
              },
            ),
          ),
          onChanged: (value) {
            setState(() {
              searchText = value;
            });
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {},
          )
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: filteredProducts.length,
        itemBuilder: (context, index) {
          final product = filteredProducts[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade50,
                child: const Icon(Icons.medical_services, color: ColorManager.primary),
              ),
              title: Text(product["name"]),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product["company"]),
                  Row(
                    children: [
                      Text("\$${product["price"]}", style: const TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(width: 10),
                      const Icon(Icons.star, color: ColorManager.primary, size: 16),
                      Text(product["rating"].toString()),
                    ],
                  ),
                ],
              ),
              trailing: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: product["inStock"] ? Colors.green.shade100 : Colors.red.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  product["inStock"] ? "In Stock" : "Out of Stock",
                  style: TextStyle(color: product["inStock"] ? Colors.green : Colors.red),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
