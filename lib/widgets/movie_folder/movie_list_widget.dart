import 'package:flutter/material.dart';
import 'package:themoviedb/resources/resources.dart';

class Movie {
  final int id;
  final String imageName;
  final String title;
  final String time;
  final String description;

  Movie(
      {required this.id,
      required this.imageName,
      required this.title,
      required this.time,
      required this.description});
}

class MovieListWidget extends StatefulWidget {
  final int movieId;
  MovieListWidget({Key? key, required this.movieId}) : super(key: key);

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final _movies = [
    Movie(
        id: 1,
        imageName: AppImages.dragon,
        title: "Dragon Ball DAIMA",
        time: "2024",
        description:
            "When Goku and friends shrink due to a conspiracy, they explore the unknown Demon Realm with Supreme Kai, Glorio and Panzy."),
    Movie(
        id: 2,
        imageName: AppImages.dragon,
        title: "Film",
        time: "July 24, 2024",
        description:
            "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine"),
    Movie(
        id: 3,
        imageName: AppImages.dragon,
        title: "Смертельная битва",
        time: "July 24, 2024",
        description:
            "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine"),
    Movie(
        id: 4,
        imageName: AppImages.dragon,
        title: "Прибытие",
        time: "July 24, 2024",
        description:
            "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine"),
    Movie(
        id: 5,
        imageName: AppImages.dragon,
        title: "Назад в будущее 1",
        time: "July 24, 2024",
        description:
            "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine"),
    Movie(
        id: 6,
        imageName: AppImages.dragon,
        title: "Назад в будущее 2",
        time: "July 24, 2024",
        description:
            "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine"),
    Movie(
        id: 7,
        imageName: AppImages.dragon,
        title: "Назад в будущее 3",
        time: "July 24, 2024",
        description:
            "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine"),
    Movie(
        id: 8,
        imageName: AppImages.dragon,
        title: "Назад в будущее 4",
        time: "July 24, 2024",
        description:
            "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine"),
  ];

  var _filteredMovies = <Movie>[];

  final _searchcontroller = TextEditingController();

  void _searchMovies() {
    print("Search==============================================");
    final query = _searchcontroller.text;
    if (query.isNotEmpty) {
      _filteredMovies = _movies.where((Movie movie) {
        return movie.title.toLowerCase().contains(query);
      }).toList();
    } else {
      _filteredMovies = _movies;
    }
    setState(() {
      {}
    });
  }

  @override
  void initState() {
    super.initState();

    _searchcontroller.addListener(_searchMovies);
    _filteredMovies = _movies;
  }

  void _onMovieTap(int index) {
    final id = _movies[index].id;
    Navigator.of(context)
        .pushNamed("/main_screen/movie_details", arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: EdgeInsets.only(top: 70),
          itemCount: _filteredMovies.length,
          itemExtent: 163,
          itemBuilder: (BuildContext context, int index) {
            final movie = _filteredMovies[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.black.withOpacity(0.2)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    clipBehavior: Clip.hardEdge,
                    child: Row(
                      children: [
                        Image(image: AssetImage(movie.imageName)),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                movie.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                movie.time,
                                style: TextStyle(color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                movie.description,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () => _onMovieTap(index),
                    ),
                  )
                ],
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: TextField(
            controller: _searchcontroller,
            decoration: InputDecoration(
              labelText: "Search",
              filled: true,
              fillColor: Colors.white.withAlpha(235),
              border: const OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
