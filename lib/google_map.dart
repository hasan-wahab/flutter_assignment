import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  Position? currentPosition;
  GoogleMapController? _mapController;
  final Set<Marker> _markers = {};
  final Set<Polyline> _polyline = {};
  final List<LatLng> _polylineCoordinates = [];
  StreamSubscription<Position>? positionStream;

  @override
  void initState() {
    startFlow();
    super.initState();
  }

  Future startFlow() async {
    await getPermission();
    await checkGpsGetCurrentPos();
  }

  @override
  Widget build(BuildContext context) {
    // return Container();
    return Scaffold(
        body: currentPosition != null
            ? GoogleMap(
                onMapCreated: (controller) {
                  _mapController = controller;
                },
                compassEnabled: true,
                markers: _markers.toSet(),
                polylines: _polyline.toSet(),
                initialCameraPosition: CameraPosition(
                  target: LatLng(
                      currentPosition!.latitude, currentPosition!.longitude),
                  zoom: 13,
                ))
            : Center(child: CircularProgressIndicator()));
  }

  Future<Object> getPermission() async {
    final status = await Permission.location.request();

    if (!status.isGranted) {
      return status;
    }
    return true;
  }

  Future checkGpsGetCurrentPos() async {
    final gps = await Geolocator.isLocationServiceEnabled();

    if (!gps) {
      await Geolocator.requestPermission();
    }
    final currentPos = await Geolocator.getCurrentPosition(
        locationSettings: LocationSettings(accuracy: LocationAccuracy.high));

    currentPosition = currentPos;
    setState(() {});

    _markers.add(Marker(
        markerId: MarkerId('current'),
        icon: BitmapDescriptor.defaultMarker,
        position: LatLng(currentPosition!.latitude, currentPosition!.longitude),
        infoWindow: InfoWindow(title: 'current')));
    _markers.add(Marker(
        markerId: MarkerId('Start'),
        icon: BitmapDescriptor.defaultMarker,
        position: LatLng(currentPosition!.latitude, currentPosition!.longitude),
        infoWindow: InfoWindow(title: 'Start')));
    _markers.removeWhere((m) => m.markerId == 'current');
    _mapController?.animateCamera(CameraUpdate.newLatLngZoom(
        LatLng(currentPosition!.latitude, currentPosition!.longitude), 15));

    await starRealTimeTracking();
  }

  Future<void> starRealTimeTracking() async {
    positionStream = Geolocator.getPositionStream(
            locationSettings: LocationSettings(accuracy: LocationAccuracy.high))
        .listen((pos) {
      setState(() {
        currentPosition = pos;

        _markers.add(Marker(
          markerId: MarkerId('current'),
          position: LatLng(pos.latitude, pos.longitude),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
        ));
        _polylineCoordinates.add(LatLng(pos.latitude, pos.longitude));
      //  _polyline.clear();

        _polyline.add((Polyline(
            polylineId: PolylineId('path'),
            color: Colors.blue,
            width: 5,
            points:List.from(_polylineCoordinates))));
      });
    });
  }

  @override
  void dispose() {
    positionStream!.cancel();
    super.dispose();
  }
}
