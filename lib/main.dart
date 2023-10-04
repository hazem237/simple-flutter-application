import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Student List'),
        ),
        body: StudentList(),
      ),
    );
  }
}

class StudentList extends StatelessWidget {
  final List<Student> students = [];

  StudentList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: students.length,
      itemBuilder: (context, index) {
        return StudentItem(student: students[index]);
      },
    );
  }
}

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
