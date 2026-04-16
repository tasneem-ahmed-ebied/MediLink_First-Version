import 'package:flutter/material.dart';

import '../../../core/route_manager.dart';

class AddMedicinePharmacy extends StatelessWidget {
  const AddMedicinePharmacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FF),
      body: SafeArea(
        child: SingleChildScrollView(
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
                child: Row(
                  children:  [
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesNames.homePharmacyPage);
                        },
                        child: Icon(Icons.arrow_back, color: Colors.white)),
                    SizedBox(width: 12),
                    Text(
                      'Add Medicine',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _label('Medicine Name *'),
                    _input(hint: 'e.g., Paracetamol 500mg'),
                    _label('Manufacturer *'),
                    _input(hint: 'e.g., PharmaCo Ltd.'),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _label('Price (\$) *'),
                              _input(hint: '0.00'),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _label('Quantity *'),
                              _input(hint: '0'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    _label('Category *'),
                    _dropdown(),
                    _label('Expiry Date *'),
                    _input(hint: 'mm/dd/yyyy'),
                    _label('Description'),
                    _textarea(
                      hint:
                      'Medicine description, usage instructions, etc.',
                    ),
                    _label('Upload Image'),
                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: const Color(0xFFBBD2FF),
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.upload, color: Color(0xFF3B82F6)),
                            SizedBox(height: 6),
                            Text(
                              'Click to upload medicine image',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFF3B82F6),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Center(
                        child: Text(
                          'Add Medicine',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _label(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6, top: 14),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          color: Color(0xFF3B82F6),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _input({required String hint}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFBBD2FF)),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          hint,
          style: const TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ),
    );
  }

  Widget _textarea({required String hint}) {
    return Container(
      height: 110,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFBBD2FF)),
      ),
      child: Text(
        hint,
        style: const TextStyle(color: Colors.grey, fontSize: 12),
      ),
    );
  }

  Widget _dropdown() {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFBBD2FF)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Medicines',
            style: TextStyle(fontSize: 12),
          ),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}
