import 'package:flutter/material.dart';
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
    return Column(
      children: [_TopPosterWidget(), _MoveiNameWidget()],
    );
  }
}

class _TopPosterWidget extends StatelessWidget {
  const _TopPosterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(AppImages.dragon),
        ),
        Positioned(
          top: 20,
          left: 20,
          bottom: 20,
          child: Image(
            image: AssetImage(AppImages.dragon),
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
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: 'Dragon Ball DAIMA',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        TextSpan(text: '2024')
      ]),
    );
  }
}
