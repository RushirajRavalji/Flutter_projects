import 'dart:convert';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_models.dart';

class WeatherService {
  // Replace this with your actual OpenWeatherMap API key
  final String apiKey = '5544efa91f8b8ee7c9665cfde3824b19';
  final String baseUrl = 'https://api.openweathermap.org/data/2.5';

  Future<Weather> getWeather(String cityName) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/weather?q=$cityName&appid=$apiKey'),
      );

      if (response.statusCode == 200) {
        return Weather.fromJson(jsonDecode(response.body));
      } else if (response.statusCode == 401) {
        throw Exception(
          'Invalid API key. Please check your OpenWeatherMap API key.',
        );
      } else {
        throw Exception(
          'Failed to load weather data: ${response.statusCode}. ${response.body}',
        );
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }

  Future<String> getCurrentCity() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('Location services are disabled');
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception(
        'Location permissions are permanently denied, enable them in settings.',
      );
    }

    // Fetch the current position
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    // Convert position to city name
    List<Placemark> placemarks = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
    );

    String? city = placemarks[0].locality;
    return city ?? 'Unknown City';
  }
}
