import 'package:flutter/material.dart';
import 'movies_data.dart'; 


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("Hello")),
          body: ListView.builder(
              itemCount: movies.length,
              itemBuilder: (BuildContext context, index) {
                return MovieClass(movie: movies[index]);
              })),
    );
  }
}

class MovieClass extends StatelessWidget {
  final Movie movie;
  const MovieClass({super.key, required this.movie});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(96, 184, 184, 184),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    movie.img,
                    width: 100,
                    height: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text(movie.title), Text(movie.type)],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Text(movie.rate),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
