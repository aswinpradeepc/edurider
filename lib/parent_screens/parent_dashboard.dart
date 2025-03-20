import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ParentDashboard extends StatelessWidget {
  const ParentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Parent Dashboard"),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Parent Info Section inside a curved container
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(15), // Curved edges
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Guardian: Rajeevkumar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Iconsax.logout, color: Colors.white),
                    onPressed: () {
                      // Handle logout functionality
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Student Info Section
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Akash Rajeev",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  const Text("Class: 5th Grade", style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Pickup Location Section
            ListTile(
              title: const Text("Pickup Location"),
              trailing: TextButton(
                onPressed: () {
                  // Handle location change
                },
                child: const Text("Change"),
              ),
            ),
            const Divider(),

            // Bus Details Section
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text("Bus Details", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),

            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: const Text("Morning"),
                subtitle: const Text("Driver: John Doe\nContact: 9876543210\nBus No: KL-07-AB-1234\nTime: 7:30 AM"),
                trailing: const Icon(Iconsax.arrow_right_3),
                onTap: () {
                  // Navigate to morning bus details
                },
              ),
            ),
            const SizedBox(height: 8),

            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: const Text("Evening"),
                subtitle: const Text("Driver: Jane Smith\nContact: 9876543211\nBus No: KL-07-CD-5678\nTime: 3:30 PM"),
                trailing: const Icon(Iconsax.arrow_right_3),
                onTap: () {
                  // Navigate to evening bus details
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
