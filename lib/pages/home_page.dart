import "dart:ui";

import "package:flutter/cupertino.dart";
import "package:flutter/gestures.dart";
import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
import "package:flutter_application_2/utility/emoji.dart";
import "package:flutter_application_2/utility/exercise.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //hi zamin
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '27 March 2024',
                      style: TextStyle(color: Colors.amber[900]),
                    )
                  ],
                ),

                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.deepOrangeAccent,
                      size: 30,
                    ))
              ],
            ),

            SizedBox(
              height: 20,
            ),

            //search bar

            Container(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(6),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'How do you feel?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.deepOrangeAccent,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),

            // different emojies
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //bad
                Column(
                  children: [
                    Emojies(
                      emojies: ' 😔',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Bad',
                        style: TextStyle(color: Colors.deepOrangeAccent)),
                  ],
                ),

                //fine
                Column(
                  children: [
                    Emojies(
                      emojies: ' 🙂',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Fine',
                        style: TextStyle(color: Colors.deepOrangeAccent)),
                  ],
                ),

                //good
                Column(
                  children: [
                    Emojies(
                      emojies: ' 😊',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Good',
                        style: TextStyle(color: Colors.deepOrangeAccent)),
                  ],
                ),

                //excellent
                Column(
                  children: [
                    Emojies(
                      emojies: ' 😍',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Excellent',
                        style: TextStyle(color: Colors.deepOrangeAccent)),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.deepOrangeAccent,
                child: Center(
                  child: Column(
                    children: [
                      //Exercises heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      // listview of exercise
                      Expanded(
                        child: ListView(
                          children: [
                            Exercise(
                              icon: Icons.favorite,
                              exerciseName: 'Speaking Skills',
                              color: Colors.red,
                              numberOfexercises: 16,
                            ),
                            Exercise(
                              icon: Icons.person,
                              exerciseName: 'reading skills',
                              color: Colors.lightBlue,
                              numberOfexercises: 10,
                            ),
                            Exercise(
                              icon: Icons.book,
                              exerciseName: 'Writing skills',
                              color: Colors.limeAccent,
                              numberOfexercises: 5,
                            ),
                            Exercise(
                              icon: Icons.travel_explore,
                              exerciseName: 'travel',
                              color: Colors.greenAccent,
                              numberOfexercises: 16,
                            ),
                            Exercise(
                              icon: Icons.star,
                              exerciseName: 'Important',
                              color: Colors.purpleAccent,
                              numberOfexercises: 6,
                            ),
                            Exercise(
                              icon: Icons.pending,
                              exerciseName: 'pending',
                              color: Colors.indigo,
                              numberOfexercises: 5,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
