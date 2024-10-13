import 'package:flutter/material.dart';
import 'package:themoviedb/resources/resources.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemExtent: 163,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.2)),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                clipBehavior: Clip.hardEdge,
                child: const Row(
                  children: [
                    Image(image: AssetImage(AppImages.dragon)),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Dragon Ball DAIMA",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "2024",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "When Goku and friends shrink due to a conspiracy, they explore the unknown Demon Realm with Supreme Kai, Glorio and Panzy.",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    ();
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
