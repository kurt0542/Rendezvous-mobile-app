import 'package:location/location.dart';

class LocationService {
  Location location = Location();
  Future<Map<String, String>?> getLongLatLocation() async {


    bool serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) return null;
    }

    PermissionStatus permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) return null;
    }

    LocationData currentLocation = await location.getLocation();
    return {
      "latitude": currentLocation.latitude?.toString() ?? "",
      "longitude": currentLocation.longitude?.toString() ?? ""
    };
  }
}
