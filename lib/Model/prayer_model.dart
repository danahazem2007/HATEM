class PrayerModel {
Map<String, dynamic> data;

PrayerModel({required this.data});

factory PrayerModel.fromJson(Map<String, dynamic> json) {
return PrayerModel(data: json['data']['timings']);
}
}