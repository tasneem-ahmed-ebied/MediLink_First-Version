import 'package:flutter/material.dart';

Widget buildField(String label, String hint) {
  return Padding(
    padding: EdgeInsets.only(bottom: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 6),
        TextField(
          decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    ),
  );
}
