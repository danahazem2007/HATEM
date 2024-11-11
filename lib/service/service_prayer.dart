import 'package:dio/dio.dart';

import '../Model/prayer_model.dart';

class PrayerService {
  static Dio dio = Dio();

  static Future<PrayerModel> getAll() async {
    try {
      const url =
          'http://api.aladhan.com/v1/timingsByCity/11-11-2024?city=Giza&country=Egypt&method=2';
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        return PrayerModel.fromJson(response.data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed fetching data');
    }
  }
}