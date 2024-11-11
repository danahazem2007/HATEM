import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prayer/Wigget/item.dart';
import 'package:prayer/provider/Prayer_provider.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "PrayerTime",
            style: TextStyle(color: Colors.purple, fontSize: 35),
          ),
        ),
      ),//
      body: Consumer<PrayerProvider>(
        builder: (context, prayerProvider, child) {
          if (prayerProvider.model == null) {
            prayerProvider.getAllData();
            return Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: prayerProvider.model?.data.length,
            itemBuilder: (context, index) {
              final timeKey = prayerProvider.model!.data.keys.elementAt(index);
              final timeValue = prayerProvider.model!.data.values.elementAt(index);
              return Item(
                timeN: '$timeKey',
                timeV: '$timeValue',
              );
            },
          );
        },
      ),
    );
  }
}