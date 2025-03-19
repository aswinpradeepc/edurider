// import 'package:flutter/material.dart';
// import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

// class StaffPage extends StatelessWidget {
//   const StaffPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Staff Page"),
//       ),
//       body: Container(
//         width: double.infinity,
//         height: 700,
//         child: MapWidget()
//         ),
//       );
//   }
// }

import 'package:flutter/material.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'dart:math';

class StaffPage extends StatelessWidget {
  const StaffPage({super.key});

  // Generate a list of random names
  List<String> generateRandomNames(int count) {
    const names = [
      'Alice', 'Bob', 'Charlie', 'David', 'Eve', 'Frank', 'Grace', 'Hannah', 'Isaac', 'Jack',
      'Kathy', 'Liam', 'Mona', 'Nina', 'Oscar', 'Paul', 'Quincy', 'Rachel', 'Sam', 'Tina'
    ];
    final random = Random();
    return List.generate(count, (index) => names[random.nextInt(names.length)]);
  }

  @override
  Widget build(BuildContext context) {
    final randomNames = generateRandomNames(20); // Generate 20 random names

    return Scaffold(
      appBar: AppBar(
        title: Text("Staff Page"),
      ),
      body: Column(
        children: [
          // MapBox widget
          Container(
            width: double.infinity,
            height: 700, // Adjust height as needed
            child: MapWidget(),
            ),
          
          // ListView of random names
        Expanded(
            child: ListView.builder(
              itemCount: randomNames.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Spacing between items
                  padding: EdgeInsets.all(12), // Padding inside the container
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(0, 4), // Shadow position
                        blurRadius: 8, // Spread of the shadow
                      ),
                    ],
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.3),
                      width: 1, // Border width
                    ),
                  ),
                  child: ListTile(
                    title: Text(
                      randomNames[index],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    contentPadding: EdgeInsets.zero, // Remove default padding from ListTile
                    tileColor: Colors.transparent, // Ensures the ListTile is transparent within the container
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}