import 'package:flutter/material.dart';
import 'package:mentalhealth_ui_flutter/components/excercise.dart';
import 'package:mentalhealth_ui_flutter/components/faces.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Apps"),
        BottomNavigationBarItem(icon: Icon(Icons.mail), label: "Mail"),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hey Nader!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 38,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "26 Jul 2024",
                        style: TextStyle(
                            color: Colors.blue[300],
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),

                  // Bell
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 16, left: 16),
              child: Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[600]),
                child: TextField(
                  controller: _searchController,
                  onChanged: (value) {
                    // Update your search results based on the query
                    print("The value entered is : $value");
                  },
                  decoration: const InputDecoration(
                    alignLabelWithHint: true,
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIconColor: Colors.white,
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "How do you feel ?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.more_horiz,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Face(emoji: '🥲', text: "Sad"),
                  Face(emoji: '🫠', text: "Surviving"),
                  Face(emoji: '🙂', text: "Fine"),
                  Face(emoji: '😃', text: "Happy"),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 23, right: 23, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: ListView(
                        children: const [
                          Excercise(
                            title: "Speaking skills",
                            subtitle: "16 Excercise",
                            iconBackgroundColor: Colors.amber,
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                          Excercise(
                            title: "Reading speed",
                            subtitle: "6 Excercise",
                            iconBackgroundColor: Colors.blueAccent,
                            icon: Icon(
                              Icons.account_circle,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                          Excercise(
                            title: "Coding",
                            subtitle: "2 Excercise",
                            iconBackgroundColor: Colors.red,
                            icon: Icon(
                              Icons.computer,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    )
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
