import 'package:flutter/material.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

CameraOptions camera = CameraOptions(
  center: Point(coordinates: Position(-98.0, 39.5)),
  zoom: 2,
  bearing: 0,
  pitch: 0);




class StudentPage extends StatelessWidget {
  const StudentPage({super.key});

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Student"),
      ),
      body: MapWidget(cameraOptions: camera,),
    );
  }
}
