import 'dart:convert';
import 'dart:ui';


import 'package:flutter/material.dart';

class StaffPage extends StatelessWidget {
  const StaffPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Dark background for contrast
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Positioned(
  top: 10,
  left: 10,
  child: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.white),
    onPressed: () {
      Navigator.pop(context); // Navigate to the previous page
    },
  ),
),

                    Text(
                      "Edurider",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.notification_add_rounded, color: Colors.black),
                        SizedBox(width: 16),
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Icon(Icons.person, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Greeting Section
                Text(
                  "ARJUN.ASHOK\nlicense.no:XD123456",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    fontFamily: "latin",
                  ),
                ),
                
                SizedBox(height: 20),

                // Buttons (View and Tasks)
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text("View"),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text("Tasks"),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Upcoming Routes Section
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.lightGreen[800],
                    borderRadius: BorderRadius.circular(12),
                    
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Upcoming routes",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "2 km to aarav's house",
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 10),
                      LinearProgressIndicator(
                        value: 0.76,
                        backgroundColor: Colors.grey,
                        color: Colors.orange,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "76%",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                // Tasks by Category Section
                Text(
                  "Tasks by category",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),

                // Grid of Task Categories
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    TaskCategoryCard(
                      title: "5 new",
                      subtitle: "Assignment",
                      color: Colors.red,
                      buttonText: "Due",
                    ),
                    TaskCategoryCard(
                      title: "2 new routes",
                      subtitle: "Messages",
                      color: Colors.orange,
                      buttonText: "Alerts",
                    ),
                    TaskCategoryCard(
                      title: "9 new",
                      subtitle: "Work",
                      color: Colors.blue,
                      buttonText: "Settings",
                    ),
                    TaskCategoryCard(
                      title: "5 pending",
                      subtitle: "Priority tasks",
                      color: Colors.purple,
                      buttonText: "Edit",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TaskCategoryCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  final String buttonText;

  TaskCategoryCard({
    required this.title,
    required this.subtitle,
    required this.color,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.lightGreen[800],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.lightGreen,
              fontSize: 14,
            ),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              minimumSize: Size(80, 30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              buttonText,
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
