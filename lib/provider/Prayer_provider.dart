import 'package:flutter/cupertino.dart';

import '../Model/prayer_model.dart';
import '../service/service_prayer.dart';

class PrayerProvider extends ChangeNotifier {
  PrayerModel? model;

  Future<void> getAllData() async {
    model = await PrayerService.getAll();
    notifyListeners();
  }
}