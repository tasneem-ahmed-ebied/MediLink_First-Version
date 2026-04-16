import 'package:flutter/material.dart';

class DonationPharmacyPage extends StatelessWidget {
  const DonationPharmacyPage({super.key});

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
          'Donation Management',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _buildImpactCard(),
          const SizedBox(height: 25),
          const Text(
            'Donation Requests',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1A4A8F),
            ),
          ),
          const SizedBox(height: 15),
          // Pending Request
          _buildDonationCard(
            medicine: 'Paracetamol 500mg',
            donor: 'Sarah Johnson',
            phone: '+1 234-567-8901',
            details: '20 tablets • Jan 28, 2026',
            status: 'Pending',
            type: DonationStatus.pending,
          ),
          // Another Pending Request
          _buildDonationCard(
            medicine: 'Vitamin D3',
            donor: 'Mike Davis',
            phone: '+1 234-567-8902',
            details: '30 capsules • Jan 27, 2026',
            status: 'Pending',
            type: DonationStatus.pending,
          ),
          // Accepted Request
          _buildDonationCard(
            medicine: 'Amoxicillin 250mg',
            donor: 'Emily Brown',
            phone: '+1 234-567-8903',
            details: '15 tablets • Jan 26, 2026',
            status: 'Accepted',
            type: DonationStatus.accepted,
          ),
          // Collected Request
          _buildDonationCard(
            medicine: 'Ibuprofen 400mg',
            donor: 'Tom Wilson',
            phone: '+1 234-567-8904',
            details: '25 tablets • Jan 25, 2026',
            status: 'Collected',
            type: DonationStatus.collected,
          ),
        ],
      ),
    );
  }

  Widget _buildImpactCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF2B80FF),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.favorite_outline, color: Colors.white, size: 30),
          const SizedBox(height: 15),
          const Text(
            'Making a Difference',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Your pharmacy has helped distribute 45 donated medicines',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildStatItem('18', 'Total'),
              _buildStatItem('8', 'Collected'),
              _buildStatItem('4', 'Pending'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(label, style: const TextStyle(color: Colors.white70, fontSize: 12)),
      ],
    );
  }

  Widget _buildDonationCard({
    required String medicine,
    required String donor,
    required String phone,
    required String details,
    required String status,
    required DonationStatus type,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE1EDFF)),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F6FF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.inventory_2_outlined, color: Color(0xFF4A89F0)),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(medicine, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        _buildStatusBadge(status),
                      ],
                    ),
                    Text(donor, style: TextStyle(color: Colors.grey[600])),
                    Text(phone, style: TextStyle(color: Colors.grey[600])),
                    const SizedBox(height: 4),
                    Text(details, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          _buildCardActions(type),
        ],
      ),
    );
  }

  Widget _buildStatusBadge(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F6FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.blueGrey, fontSize: 11, fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget _buildCardActions(DonationStatus type) {
    if (type == DonationStatus.pending) {
      return Row(
        children: [
          Expanded(
            child: _actionButton('Accept', const Color(0xFF4A89F0), Colors.white, Icons.check),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: _actionButton('Decline', const Color(0xFF4A89F0), Colors.white, Icons.close),
          ),
        ],
      );
    } else if (type == DonationStatus.accepted) {
      return SizedBox(
        width: double.infinity,
        child: _actionButton('Mark as Collected', const Color(0xFF4A89F0), Colors.white, Icons.check),
      );
    } else {
      return const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.check, color: Colors.green, size: 18),
          SizedBox(width: 8),
          Text(
            'Collected and processed',
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500),
          ),
        ],
      );
    }
  }

  Widget _actionButton(String label, Color bg, Color text, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: text, size: 16),
          const SizedBox(width: 8),
          Text(label, style: TextStyle(color: text, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

enum DonationStatus { pending, accepted, collected }