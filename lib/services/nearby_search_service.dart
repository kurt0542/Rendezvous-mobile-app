import 'dart:convert';
import 'dart:math';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_app_project/utils/location_service.dart';
class NearbySearchService {
  final String? apiKey = dotenv.env['GOOGLE_PLACES_API_KEY'];

  Future<List<dynamic>> getPosts() async {
    final locationService = LocationService();
    final locationData = await locationService.getLongLatLocation();
    if (locationData == null) {
      throw Exception("Location not available");
    }
    final latitude = locationData["latitude"]!;
    final longitude = locationData["longitude"]!;

    var uri = Uri.parse(
        'https://maps.googleapis.com/maps/api/place/nearbysearch/json'
            '?location=$latitude,$longitude'
            '&keyword=coffee'
            '&type=cafe'
            '&rankby=distance'
            '&key=$apiKey');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['results'];
    } else {
      throw Exception("Failed to fetch nearby places");
    }
  }

  double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
    const earthRadius = 6371;
    double _degreesToRadian(double degrees) {
      return degrees * pi / 180;
    }
    final differenceInLatitude = _degreesToRadian(lat2 - lat1);
    final differenceInLongitude = _degreesToRadian(lon2 - lon1);

    final a = sin(differenceInLatitude / 2) * sin(differenceInLatitude / 2) +
        cos(_degreesToRadian(lat1)) *
            cos(_degreesToRadian(lat2)) *
            sin(differenceInLongitude / 2) *
            sin(differenceInLongitude / 2);

    final c = 2 * atan2(sqrt(a), sqrt(1 - a));

    return earthRadius * c;
  }
}
