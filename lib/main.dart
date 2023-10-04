import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Student {
  final int id;
  final String name;
  final String major;
  final double average;
  final String imagePath; 

  Student({
    required this.id,
    required this.name,
    required this.major,
    required this.average,
    required this.imagePath,
  });
}


