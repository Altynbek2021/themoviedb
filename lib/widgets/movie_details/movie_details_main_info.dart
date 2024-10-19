import 'package:flutter/material.dart';
import 'package:themoviedb/Theme/appcolors.dart';
import 'package:themoviedb/resources/resources.dart';

class MovieDetailsMainInfo extends StatefulWidget {
  const MovieDetailsMainInfo({
    super.key,
  });

  @override
  State<MovieDetailsMainInfo> createState() => _MovieDetailsWidgetState();
}

class _MovieDetailsWidgetState extends State<MovieDetailsMainInfo> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [_TopPosterWidget(), _MoveiNameWidget()],
    );
  }
}

class _TopPosterWidget extends StatelessWidget {
  const _TopPosterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Image(
          image: AssetImage(AppImages.cinema),
        ),
        Positioned(
          top: 20,
          left: 20,
          bottom: 20,
          child: Image(
            image: AssetImage(AppImages.cinema),
          ),
        )
      ],
    );
  }
}

class _MoveiNameWidget extends StatelessWidget {
  const _MoveiNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: RichText(
        text: const TextSpan(children: [
          TextSpan(
              text: 'Dragon Ball DAIMA Altynbek Shatmanaliev',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: AppColors.white)),
          TextSpan(text: ' (2024) ', style: TextStyle(color: AppColors.white))
        ]),
      ),
    );
  }
}
