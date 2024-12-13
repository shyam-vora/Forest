import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MangeFriendList extends StatefulWidget {
  const MangeFriendList({super.key});

  @override
  State<MangeFriendList> createState() => _MangeFriendListState();
}

class _MangeFriendListState extends State<MangeFriendList> {
  String selectedSegment = "My Friends";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF33745e),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF224d3c),
        title: const Text(
          'Manage Friend List',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF306e59),
            ),
            margin: const EdgeInsets.all(15),
            height: 35,
            child: CupertinoSlidingSegmentedControl<String>(
              children: {
                "My Friends": Text(
                  "My Friends",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedSegment == "My Friends"
                        ? Colors.black
                        : Colors.white,
                  ),
                ),
                "Requests": Text(
                  "Requests",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedSegment == "Requests"
                        ? Colors.black
                        : Colors.white,
                  ),
                ),
                "Suggestions": Text(
                  "Suggestions",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedSegment == "Suggestions"
                        ? Colors.black
                        : Colors.white,
                  ),
                ),
              },
              onValueChanged: (String? value) {
                if (value != null) {
                  setState(() {
                    selectedSegment = value;
                  });
                }
              },
              groupValue: selectedSegment,
            ),
          ),
          Expanded(
            child: selectedSegment == "My Friends"
                ? Center(
                    child: Text(
                      "No friends found",
                      style: const TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  )
                : selectedSegment == "Requests"
                    ? Center(
                        child: Text(
                          "No friend requests found",
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      )
                    : selectedSegment == "Suggestions"
                        ? ListView(
                            padding: const EdgeInsets.all(16.0),
                            children: [
                              ListTile(
                                title: const Text(
                                  "Add Friend via Email Address",
                                  style: TextStyle(color: Colors.white),
                                ),
                                trailing: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                onTap: () {},
                              ),
                              const Divider(),
                              ListTile(
                                title: Text(
                                  "Users who entered my referral code",
                                  style: TextStyle(color: Colors.white),
                                ),
                                trailing: const Text(
                                  "0",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onTap: () {},
                              ),
                              const Divider(),
                              // Sent Friend Requests
                              ListTile(
                                title: const Text(
                                  "Sent Friend Requests",
                                  style: TextStyle(color: Colors.white),
                                ),
                                trailing: const Text(
                                  "0",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onTap: () {},
                              ),
                            ],
                          )
                        : SizedBox.shrink(), // Fallback for other cases
          ),
        ],
      ),
    );
  }
}
