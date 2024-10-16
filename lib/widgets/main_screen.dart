import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/movie_folder/movie_list_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedTab = 0;
  static List<Widget> _widgetOptions = <Widget>[
    const Text(
      'News',
    ),
    MovieListWidget(
      movieId: 2,
    ),
    const Text(
      'TV shows',
    ),
  ];

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "TMDB",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions[_selectedTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Movies"),
          BottomNavigationBarItem(icon: Icon(Icons.tv), label: "TV shows")
        ],
        onTap: onSelectedTab,
      ),
    );
  }
}
