import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:themoviedb/Theme/appcolors.dart';
import 'package:themoviedb/resources/resources.dart';
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
      backgroundColor: const Color.fromARGB(221, 22, 21, 21),
      appBar: AppBar(
        title: const Text(
          "Tom Clancy's Without Remorse",
          style: TextStyle(color: AppColors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MovieDetailsMainInfo(),
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      new CircularPercentIndicator(
                        radius: 25.0,
                        lineWidth: 5.0,
                        percent: 0.69,
                        center: new Text(
                          "69%",
                          style: TextStyle(color: AppColors.white),
                        ),
                        progressColor: Colors.green,
                      ),
                      const Text(
                        "   user rating",
                        style: TextStyle(color: AppColors.white),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    width: 1,
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                      Text(
                        style: TextStyle(color: Colors.white),
                        "Play Trailer",
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Colors.black,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 70),
                child: Text(
                  "R 04/29/2921 (US) 1h 49m Action, Advenrure, War",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Overview",
                    style: TextStyle(color: AppColors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "An elite Navy SEAL uncovers an international conspiracy while seeking justice for the murder of his pregnant wife",
                    style: TextStyle(color: AppColors.white),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomColumn(
                            name: "Gulmira SHatmanalieva",
                            title: "Grandma",
                          ),
                          CustomColumn(
                            name: "Shatmanaliev Altynbek",
                            title: "Father",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomColumn(
                            name: "Bolot kyzy Baktygul",
                            title: "mother",
                          ),
                          CustomColumn(
                            name: "Altynbekov Ilim",
                            title: "Son",
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row_Scroll(),
                    Row_Scroll(),
                    Row_Scroll(),
                    Row_Scroll(),
                    Row_Scroll(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Row_Scroll extends StatelessWidget {
  const Row_Scroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 200,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Image(image: AssetImage(AppImages.film)),
          Text("Hello, world!!!"),
        ],
      ),
    );
  }
}

class CustomColumn extends StatelessWidget {
  final String name;
  final String title;
  const CustomColumn({
    super.key,
    required this.name,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 14,
                color: AppColors.white,
                fontWeight: FontWeight.w100),
          )
        ],
      ),
    );
  }
}
