import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class Geolocation extends StatefulWidget {
  const Geolocation({super.key});

  @override
  State<Geolocation> createState() => _GeolocationState();
}

class _GeolocationState extends State<Geolocation> {
  Position? _currentLocation;
  String _currentAddress = "";
  bool servicePermission = false;
  late LocationPermission permission;

  Future<Position> _getCurrentLocation() async {
    try {
      servicePermission = await Geolocator.isLocationServiceEnabled();
      if (!servicePermission) {
        return Future.error('Location services are disabled.');
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Location permissions are denied');
        }
      }
      if (permission == LocationPermission.deniedForever) {
        return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
      }

      return await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
    } catch (e) {
      return Future.error('Failed to get current location: $e');
    }
  }

  Future<void> _getAddressFromCoordinates() async {
    if (_currentLocation == null) return;

    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
          _currentLocation!.latitude, _currentLocation!.longitude);

      Placemark place = placemarks[0];
      setState(() {
        _currentAddress = "${place.locality}, ${place.country}";
      });
    } catch (e) {
      print("Failed to get address: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get user location"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Location Coordinates",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 6),
            Text(
              _currentLocation != null
                  ? "Latitude = ${_currentLocation!.latitude}; Longitude = ${_currentLocation!.longitude}"
                  : "Location not available",
            ),
            SizedBox(height: 30),
            Text(
              "Location Address",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 6),
            Text(_currentAddress),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () async {
                try {
                  _currentLocation = await _getCurrentLocation();
                  await _getAddressFromCoordinates();
                  setState(() {
                    // Trigger rebuild to display updated location and address
                  });

                  print("Location: $_currentLocation");
                  print("Address: $_currentAddress");
                } catch (e) {
                  print("Error: $e");
                  // Optionally show a Snackbar or dialog to inform the user
                }
              },
              child: Text("Get Location"),
            ),
          ],
        ),
      ),
    );
  }
}
