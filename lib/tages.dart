import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Tags extends StatefulWidget {
  const Tags({super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  final List<Map<String, dynamic>> tags = [
    {'name': 'Work', 'color': Colors.lightBlue},
    {'name': 'Study', 'color': Colors.purple},
    {'name': 'Social', 'color': Colors.green},
    {'name': 'Rest', 'color': Colors.yellow},
    {'name': 'Entertainment', 'color': Colors.orange},
    {'name': 'Other', 'color': Colors.teal},
    {'name': 'Sport', 'color': Colors.deepPurple},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF367761),
      appBar: AppBar(
        backgroundColor: Color(0xFF224d3c),
        centerTitle: true,
        title: Text(
          'Tags',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 40,
              // width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: 'Search or Create tags',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: tags.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: tags[index]['color'],
                          radius: 8,
                        ),
                        title: Text(tags[index]['name']),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                        height: 4,
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
