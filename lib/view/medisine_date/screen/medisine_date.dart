import 'package:flutter/material.dart';
import 'package:medi_link/core/assets_manager.dart';
import 'package:medi_link/core/route_manager.dart';

import '../../../core/color_manager.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        leading: InkWell(
            onTap: () {
              Navigator.pushNamed(context, RoutesNames.homeUserPage);
            },
            child: const Icon(Icons.arrow_back)),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.favorite_border),
          )
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.blue.shade100),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  AssetsValuesManager.paracatemol,
                  height: 220,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Paracetamol 500mg',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'PharmaCo Ltd.',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Text(
                        '\$5.99',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      Text('4.5 (234 reviews)'),
                      Spacer(),
                      Chip(label: Text('In Stock')),
                    ],
                  ),
                  const SizedBox(height: 20),
                  _infoBox(
                    'Description',
                    'Paracetamol is a common painkiller used to treat aches and pain. It can also reduce fever.',
                  ),
                  _infoBox(
                    'Dosage & Usage',
                    'Adults: 1-2 tablets every 4-6 hours.\nMaximum 8 tablets in 24 hours.',
                  ),
                  _infoBox(
                    'Side Effects',
                    'Rare side effects include allergic reactions and skin rashes.',
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Quantity',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesNames.nearestPharmacy);
                    },
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text('Find Nearest Pharmacy',style: TextStyle(color: ColorManager.primary),),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 55),
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesNames.cartPage);
                    },
                    child: const Text(
                      'Add to Cart - \$5.99',
                      style: TextStyle(fontSize: 16,color: ColorManager.darbBlue),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _infoBox(String title, String text) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(bottom: 15),
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: Colors.blue.shade50,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.blue.shade100),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.info_outline, color: Colors.blue),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(text),
      ],
    ),
  );
}
