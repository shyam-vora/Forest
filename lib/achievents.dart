import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class achieveents extends StatefulWidget {
  const achieveents({super.key});

  @override
  State<achieveents> createState() => _achieveentsState();
}

class _achieveentsState extends State<achieveents> {
  final List<Map<String, String>> achievements = [
    {
      "title": "Novice Planter",
      "subtitle": "Total focused time reaches 4 hours (0/4)"
    },
    {
      "title": "Apprentice Planter",
      "subtitle": "Total focused time reaches 3 days (0/3)"
    },
    {
      "title": "Adept Planter",
      "subtitle": "Total focused time reaches 7 days (0/7)"
    },
    {
      "title": "Expert Planter",
      "subtitle": "Total focused time reaches 15 days (0/15)"
    },
    {
      "title": "Green Thumb",
      "subtitle": "Total focused time reaches 30 days (0/30)"
    },
    {
      "title": "3 Days in a Row",
      "subtitle": "Plant healthy trees 3 days in a row (0/3)"
    },
    {
      "title": "7 Days in a Row",
      "subtitle": "Plant healthy trees 7 days in a row (0/7)"
    },
    {
      "title": "30 Days in a Row",
      "subtitle": "Plant healthy trees 30 days in a row (0/30)"
    },
    {
      "title": "Novice Planter",
      "subtitle": "Total focused time reaches 4 hours (0/4)"
    },
    {
      "title": "Apprentice Planter",
      "subtitle": "Total focused time reaches 3 days (0/3)"
    },
    {
      "title": "Adept Planter",
      "subtitle": "Total focused time reaches 7 days (0/7)"
    },
    {
      "title": "Expert Planter",
      "subtitle": "Total focused time reaches 15 days (0/15)"
    },
    {
      "title": "Green Thumb",
      "subtitle": "Total focused time reaches 30 days (0/30)"
    },
    {
      "title": "3 Days in a Row",
      "subtitle": "Plant healthy trees 3 days in a row (0/3)"
    },
    {
      "title": "7 Days in a Row",
      "subtitle": "Plant healthy trees 7 days in a row (0/7)"
    },
    {
      "title": "30 Days in a Row",
      "subtitle": "Plant healthy trees 30 days in a row (0/30)"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF367761),
      appBar: AppBar(
        backgroundColor: const Color(0xFF224d3c),
        centerTitle: true,
        title: const Text(
          'Achievnments',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: achievements.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => showAchievementDialog(index),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF224d3c),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Color.fromARGB(158, 176, 176, 176),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 13),
                      child: Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${achievements[index]['title']}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${achievements[index]['subtitle']}',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          )
                        ],
                      )),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // showpop

  void showAchievementDialog(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          content: SizedBox(
            height: 250,
            child: Column(
              children: [
                Text(
                  achievements[index]['title'] ?? 'Achievement',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  achievements[index]['subtitle'] ?? '',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
