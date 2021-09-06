//this is sample (example) code that we can base our class attendance location tracker on
// resourced: https://codingwithjoe.com/google-maps-and-geolocation-in-flutter/
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(StudentApp());

class StudentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Maps ',
      home: GMap(),
    );
  }
}

class GMap extends StatefulWidget {
  @override
  State<GMap> createState() => GMapSampleState();
}

class GMapSampleState extends State<GMap> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: CameraPosition(
          //going to be set for chicago area
         // target: LatLng(40.688841, -74.044015),
          zoom: 11,
        ),
      ),
    );
  }
}