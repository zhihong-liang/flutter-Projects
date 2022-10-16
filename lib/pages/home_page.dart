// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:first_flutter_project/util/emoticon_face.dart';
import 'package:first_flutter_project/util/exercise_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ]),
        body: SafeArea(
          child: Column(
            children: [
              // greeting row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Hi Kazaf
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hi Kazaf!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '23 Jan, 2022',
                              style: TextStyle(color: Colors.blue[200]),
                            ),
                          ],
                        ),

                        // Notification
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12)),
                          padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),

                    // search bar
                    SizedBox(
                      height: 25,
                    ),

                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12)),
                      padding: EdgeInsets.all(12),
                      child: Row(children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text('Search',
                            style: TextStyle(
                              color: Colors.white,
                            ))
                      ]),
                    ),

                    SizedBox(
                      height: 25,
                    ),

                    // how do you feel?
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'How do you feel?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )
                      ],
                    ),

                    SizedBox(
                      height: 25,
                    ),

                    // 4 different faces
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // bad
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '😭',
                            ),
                            SizedBox(height: 8),
                            Text(
                              'bad',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        // fine
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '😉',
                            ),
                            SizedBox(height: 8),
                            Text(
                              'fine',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        // well
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '😁',
                            ),
                            SizedBox(height: 8),
                            Text(
                              'well',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        // excellent
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '😘',
                            ),
                            SizedBox(height: 8),
                            Text(
                              'excellent',
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
                height: 25,
              ),

              Expanded(
                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey[200],
                  child: Column(children: [
                    // exercise heading
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Excercises',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Icon(Icons.more_horiz)
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    // listview of exercises
                    Expanded(
                      child: ListView(
                        children: [
                          ExerciseTile(
                            icon: Icons.favorite,
                            exerciseName: 'Speaking Skills',
                            numberOfExercises: 16,
                            color: Colors.orange,
                          ),
                          ExerciseTile(
                            icon: Icons.person,
                            exerciseName: 'Reading Skills',
                            numberOfExercises: 8,
                            color: Colors.green,
                          ),
                          ExerciseTile(
                            icon: Icons.star,
                            exerciseName: 'Writing Skills',
                            numberOfExercises: 20,
                            color: Colors.pink,
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
              )
            ],
          ),
        ));
  }
}
