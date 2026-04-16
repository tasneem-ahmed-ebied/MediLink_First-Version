import 'package:flutter/material.dart';
import 'package:medi_link/core/route_manager.dart';

import '../../../core/color_manager.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        leading: InkWell(
            onTap: () {
              Navigator.pushNamed(context, RoutesNames.medicineDate);
            },
            child: const Icon(Icons.arrow_back)),
        title: const Text('My Cart'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Center(child: Text('3 items')),
          )
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: const [
                CartItem(
                  name: 'Paracetamol 500mg',
                  company: 'PharmaCo',
                  price: '\$5.99',
                  quantity: '2',
                ),
                CartItem(
                  name: 'Amoxicillin 250mg',
                  company: 'MedLife',
                  price: '\$12.5',
                  quantity: '1',
                ),
                CartItem(
                  name: 'Vitamin D3',
                  company: 'HealthPlus',
                  price: '\$8.99',
                  quantity: '1',
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Subtotal'),
                    Text('\$33.47'),
                  ],
                ),
                const SizedBox(height: 8),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery Fee'),
                    Text('\$2.99'),
                  ],
                ),
                const SizedBox(height: 8),
                const Divider(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\$36.46',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                 onPressed: () {

                 },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 55),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child:  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesNames.checkOutPage);
                    },
                    child: Text(
                      'Proceed to Checkout',
                      style: TextStyle(fontSize: 16,color: ColorManager.darbBlue),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String name;
  final String company;
  final String price;
  final String quantity;

  const CartItem({
    super.key,
    required this.name,
    required this.company,
    required this.price,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blue.shade50,
            child: const Icon(Icons.medical_services, color: Colors.blue),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  company,
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 6),
                Text(
                  price,
                  style: const TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          Column(
            children: [
              const Icon(Icons.delete_outline, color: Colors.blue),
              const SizedBox(height: 10),
              Row(
                children: [
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.blue.shade50,
                    child: const Icon(Icons.remove, size: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(quantity),
                  ),
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.blue.shade50,
                    child: const Icon(Icons.add, size: 16),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
