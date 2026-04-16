import 'package:flutter/material.dart';
import 'package:medi_link/core/color_manager.dart';
import 'package:medi_link/core/height_manager.dart';
import 'package:medi_link/core/radius_manager.dart';

import '../../../core/route_manager.dart';
import '../widgets/build_field.dart';

class DonateMedicinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: Container(
          width: 380,
          height: 750,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Column(
            children: [
              Container(
                height: HeightManager.h100,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(
                  RadiusValuesManager.r25
                  ),
                ),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesNames.homeUserPage);
                        },
                        child: Icon(Icons.arrow_back, color: Colors.white)),
                    SizedBox(width: 12),
                    Text(
                      "Donate Medicine",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.favorite_border,
                                    color: Colors.blue),
                                SizedBox(width: 8),
                                Text(
                                  "Help Others & Earn Rewards!",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Donate your unused medicines to help those who can't afford them.",
                              style: TextStyle(color: Colors.grey.shade700),
                            ),
                            SizedBox(height: 12),
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Earn Up to 200 Points!",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Text("• Base: 100 points per donation"),
                                  Text("• Bonus: +50 pts for unopened medicines"),
                                  Text("• Bonus: +50 pts for quantity > 10"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      buildField("Medicine Name *", "e.g., Paracetamol 500mg"),
                      buildField("Quantity *", "e.g., 20 tablets"),
                      buildField("Expiry Date *", "mm/dd/yyyy"),
                      Text(
                        "Condition *",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 6),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: "Unopened/Sealed",
                            items: [
                              DropdownMenuItem(
                                value: "Unopened/Sealed",
                                child: Text("Unopened/Sealed"),
                              ),
                              DropdownMenuItem(
                                value: "Opened",
                                child: Text("Opened"),
                              ),
                            ],
                            onChanged: (_) {},
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Additional Notes",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 6),
                      TextField(
                        maxLines: 4,
                        decoration: InputDecoration(
                          hintText: "Any additional information...",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Upload Medicine Photo",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 6),
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.shade300,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.upload, size: 28),
                              SizedBox(height: 6),
                              Text("Click to upload image"),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border),
                          label: Text("Submit Donation",style: TextStyle(color: ColorManager.primary),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorManager.blue200,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
