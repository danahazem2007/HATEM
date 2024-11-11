import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String timeN;
  final String timeV;

  const Item({Key? key, required this.timeN, required this.timeV}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0), // Adds space between items
      decoration: BoxDecoration(
        color: Colors.purpleAccent,
        borderRadius: BorderRadius.circular(8.0), // Rounded corners
      ),
      child: ListTile(
        title: Text(
          timeN,
          style: TextStyle(
            color: Colors.white, // Changes text color for better contrast
            fontSize: 18.0,
          ),
        ),
        trailing: Text(
          timeV,
          style: TextStyle(
            color: Colors.white, // Changes text color for better contrast
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}