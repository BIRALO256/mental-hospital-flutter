import 'package:flutter/material.dart';

import 'Screens/MathQuzi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[45],
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '\u{1F44B}',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Hi Pamela,",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.brown,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text(
                      "Great to see you again!",
                      style: TextStyle(color: Colors.brown[500]),
                    ),
                  ],
                  // Waving Hand emoji
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.orange[200],
                      borderRadius: BorderRadius.circular(25)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person_3_outlined),
                    iconSize: 40,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.orange[700],
              ),
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.star,
                            color: Colors.orange[900],
                            size: 25,
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "2300",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Exp.Points",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 2, // Width of the vertical line
                    color: Colors.white,
                    height: 50,
                    // Color of the vertical line
                    // child: Text("1"),
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.star,
                            color: Colors.orange[900],
                            size: 25,
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "32",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Ranking",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text("\u{1F449}"),
                Text(
                  " Practice More",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[500],
                      fontSize: 13),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green[700],
              ),
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4, right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.people_alt,
                          size: 16,
                          color: Colors.white,
                        ),
                        Text(
                          " 120 participated",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: 12,
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "3h",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Daily Quiz",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "20 mixed questions",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              ">",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 29),
                            ))
                      ],
                    ),

                    ///CONTINUE STUDYING
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.edit_note_rounded,
                  color: Colors.yellow[700],
                ),
                Text(
                  "Continue Studying",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[500],
                      fontSize: 13),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              height: 5,
            ),
            Expanded(
                child: ListView(
              children: [
                ContinueStudying(),
                SizedBox(
                  height: 6,
                ),
                ContinueStudying(),
                SizedBox(
                  height: 6,
                ),
                ContinueStudying(),
                SizedBox(
                  height: 6,
                ),
                ContinueStudying(),
              ],
            )),
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
          // backgroundColor:
          //     Colors.blue, // Background color of the navigation bar
          selectedItemColor: Colors.brown[300], // Color of the selected icon
          unselectedItemColor: Colors.grey,
          onTap: (Index) {
            setState(() {
              selectedIndex = Index;
            });
          },
          currentIndex: selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              // backgroundColor: Colors.brown[100],
              label: 'Martinell',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Saka',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.badge),
              label: 'Saka',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.sports_football_sharp), label: 'Jovic')
          ]),
    );
  }

//contiune studying section
  Container ContinueStudying() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.pink[50], borderRadius: BorderRadius.circular(20)),
      child: GestureDetector(
        onTap: () => {
          // Within the `FirstRoute` widget
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MathQuiz()),
          ),
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Text(
                        "A",
                        style: TextStyle(
                            color: Colors.brown[300],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Class",
                        style: TextStyle(
                            color: Colors.brown[300],
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Math",
                      style: TextStyle(
                          color: Colors.brown[400],
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "12 questions left",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown[300]),
                    )
                  ],
                ),
              ],
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  ">",
                  style: TextStyle(color: Colors.brown[500], fontSize: 29),
                ))
          ],
        ),
      ),
    );
  }
}
