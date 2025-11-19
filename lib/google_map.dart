import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  @override
  void initState() {
    getPermission();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Map'),
      ),
      // body: GoogleMap(
      //   initialCameraPosition:
      //       CameraPosition(target: LatLng(33.650048, 73.0777264)),
      //
      // ),
    );
  }
}

Future<bool> getPermission() async {
  final status = await Permission.location.request();
  if (!status.isGranted) {
    return false;
  } else {
    return true;
  }
}
