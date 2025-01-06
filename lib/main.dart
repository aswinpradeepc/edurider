// import 'package:flutter/material.dart';
// import 'package:edurider/staff.dart';
// import 'package:edurider/student.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Edurider',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Edurider'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Wrap with Center to center content
//         child: Column(
//           mainAxisAlignment:
//               MainAxisAlignment.center, // Vertically center children
//           children: [
//             ElevatedButton.icon(
//               // Use ElevatedButton.icon for icon and text
//               onPressed: () {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (_) => StudentPage()));
//               },
//               label: const Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Icon(Icons.person, size: 36),
//                   Text("Student/Parent"),
//                 ],
//               ),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.green[100],
//                 minimumSize: const Size(300, 200), // Set minimum button size
//                 textStyle: const TextStyle(fontSize: 18), // Increase text size
//                 shape: RoundedRectangleBorder(
//                     // Add RoundedRectangleBorder
//                     borderRadius:
//                         BorderRadius.circular(20.0) // Adjust radius as needed
//                     ),
//               ),
//             ),
//             const SizedBox(height: 40), // Add spacing between buttons
//             ElevatedButton.icon(
//               onPressed: () {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (_) => StaffPage()));
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.green[100],
//                 minimumSize: const Size(300, 200),
//                 textStyle: const TextStyle(fontSize: 18),
//                 shape: RoundedRectangleBorder(
//                     // Add RoundedRectangleBorder
//                     borderRadius:
//                         BorderRadius.circular(20.0) // Adjust radius as needed
//                     ),
//               ),
//               label: const Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Icon(Icons.work, size: 36), // Add an icon
//                   Text("Staff"),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Pass your access token to MapboxOptions so you can load a map
  String ACCESS_TOKEN = const String.fromEnvironment("ACCESS_TOKEN");
  MapboxOptions.setAccessToken(ACCESS_TOKEN);

  // Define options for your camera
  CameraOptions camera = CameraOptions(
    center: Point(coordinates: Position(-98.0, 39.5)),
    zoom: 2,
    bearing: 0,
    pitch: 0);

  // Run your application, passing your CameraOptions to the MapWidget
  runApp(MaterialApp(home: MapWidget(
    cameraOptions: camera,
  )));
}