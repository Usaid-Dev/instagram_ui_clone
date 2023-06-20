import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../page/home_page.dart';
import '../page/media_page.dart';
import '../page/reels_page.dart';
import '../page/search_page.dart';
import '../page/user_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: const [
          HomePage(),
          SearchPage(),
          MediaPage(),
          ReelsPage(),
          UserPage(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 0;
                });
              },
              icon: Icon(
                Icons.home,
                size: 30,
                color: currentPage == 0 ? Colors.black87 : Colors.black54,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 1;
                });
              },
              icon: Icon(
                Icons.search,
                size: 30,
                color: currentPage == 1 ? Colors.black87 : Colors.black54,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MediaPage(),
                  ),
                );
              },
              icon: Icon(
                Icons.add,
                size: 30,
                color: currentPage == 2 ? Colors.black87 : Colors.black54,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 3;
                });
              },
              icon: Icon(
                Icons.ondemand_video,
                size: 30,
                color: currentPage == 3 ? Colors.black87 : Colors.black54,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 4;
                });
              },
              icon: Icon(
                FontAwesomeIcons.user,
                size: 30,
                color: currentPage == 4 ? Colors.black87 : Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
