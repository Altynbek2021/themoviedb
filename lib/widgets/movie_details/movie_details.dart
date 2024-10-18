import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/movie_details/movie_details_main_info.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MovieDetailsWidget extends StatefulWidget {
  final int movieId;
  const MovieDetailsWidget({super.key, required this.movieId});

  @override
  State<MovieDetailsWidget> createState() => _MovieDetailsWidgetState();
}

class _MovieDetailsWidgetState extends State<MovieDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tom Clancy's Without Remorse"),
      ),
      body: ListView(
        children: [
          MovieDetailsMainInfo(),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                new CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 1.0,
                  center: new Text("100%"),
                  progressColor: Colors.green,
                ),
                Text("   user rating"),
                Icon(Icons.youtube_searched_for)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
