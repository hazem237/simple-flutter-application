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

class StudentItem extends StatelessWidget {
  final Student student;

  const StudentItem({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    double rating = student.average / 20.0;

    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(student.imagePath),
      ),
      title: Text(student.name),
      subtitle: Text(student.major),
      trailing: RatingBarIndicator(
        rating: rating,
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        itemCount: 5,
        itemSize: 24.0,
        unratedColor: Colors.grey[300],
      ),
    );
  }
}
