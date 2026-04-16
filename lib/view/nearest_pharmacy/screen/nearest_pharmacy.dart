import 'package:flutter/material.dart';
import 'package:medi_link/core/route_manager.dart';

class NearestPharmacyPage extends StatelessWidget {
  const NearestPharmacyPage({super.key});

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
        title: const Text('Nearest Pharmacy'),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 220,
            width: double.infinity,
            color: Colors.blue.shade50,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(
                    Icons.location_on,
                    size: 40,
                    color: Colors.blue,
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: const Icon(
                      Icons.navigation,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: const [
                PharmacyCard(
                  name: 'HealthCare Pharmacy',
                  distance: '0.5 km away',
                  rating: '4.8',
                  address: '123 Main St',
                  status: 'Open',
                ),
                PharmacyCard(
                  name: 'MediPlus Drugstore',
                  distance: '1.2 km away',
                  rating: '4.6',
                  address: '456 Oak Ave',
                  status: 'Open',
                ),
                PharmacyCard(
                  name: 'City Pharmacy',
                  distance: '1.8 km away',
                  rating: '4.7',
                  address: '789 Elm St',
                  status: 'Closed',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PharmacyCard extends StatelessWidget {
  final String name;
  final String distance;
  final String rating;
  final String address;
  final String status;

  const PharmacyCard({
    super.key,
    required this.name,
    required this.distance,
    required this.rating,
    required this.address,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: status == 'Open'
                      ? Colors.blue.shade50
                      : Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    color:
                    status == 'Open' ? Colors.blue : Colors.grey.shade700,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.location_on,
                  size: 16, color: Colors.grey),
              const SizedBox(width: 4),
              Text(distance),
              const SizedBox(width: 10),
              const Icon(Icons.star, size: 16, color: Colors.amber),
              Text(rating),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            address,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: null,
                  icon: const Icon(Icons.call),
                  label: const Text('Call'),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: null,
                  icon: const Icon(Icons.navigation),
                  label: const Text('Direction'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
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
