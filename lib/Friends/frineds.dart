import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/Friends/manage_friend_list.dart';

class Friend extends StatefulWidget {
  const Friend({Key? key}) : super(key: key);

  @override
  State<Friend> createState() => _FriendState();
}

class _FriendState extends State<Friend> {
  String selectedSegment = "Friends";
  final userList = [
    {"name": "Satvi Desai", "trees": 0, "coins": 0, "minutes": 312},
    {"name": "Daniela Salazar", "trees": 1, "coins": 0, "minutes": 310},
    {"name": "Freshboi", "trees": 3, "coins": 0, "minutes": 306},
    {"name": "Monique", "trees": 1, "coins": 0, "minutes": 305},
    {"name": "Fernando Herrera", "trees": 10, "coins": 0, "minutes": 305},
    {"name": "Satvi Desai", "trees": 0, "coins": 0, "minutes": 312},
    {"name": "Daniela Salazar", "trees": 1, "coins": 0, "minutes": 310},
    {"name": "Freshboi", "trees": 3, "coins": 0, "minutes": 306},
    {"name": "Monique", "trees": 1, "coins": 0, "minutes": 305},
    {"name": "Fernando Herrera", "trees": 10, "coins": 0, "minutes": 305},
    {"name": "Satvi Desai", "trees": 0, "coins": 0, "minutes": 312},
    {"name": "Daniela Salazar", "trees": 1, "coins": 0, "minutes": 310},
    {"name": "Freshboi", "trees": 3, "coins": 0, "minutes": 306},
    {"name": "Monique", "trees": 1, "coins": 0, "minutes": 305},
    {"name": "Fernando Herrera", "trees": 10, "coins": 0, "minutes": 305},
    {"name": "Satvi Desai", "trees": 0, "coins": 0, "minutes": 312},
    {"name": "Daniela Salazar", "trees": 1, "coins": 0, "minutes": 310},
    {"name": "Freshboi", "trees": 3, "coins": 0, "minutes": 306},
    {"name": "Monique", "trees": 1, "coins": 0, "minutes": 305},
    {"name": "Fernando Herrera", "trees": 10, "coins": 0, "minutes": 305},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF367761),
      appBar: AppBar(
        backgroundColor: const Color(0xFF224d3c),
        centerTitle: true,
        title: const Text(
          'Forest Ranking',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 40,
                width: 400,
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: CupertinoSegmentedControl<String>(
                  groupValue: selectedSegment,
                  padding: const EdgeInsets.all(2),
                  onValueChanged: (value) {
                    setState(() {
                      selectedSegment = value;
                    });
                  },
                  selectedColor: Colors.white,
                  unselectedColor: Colors.transparent,
                  borderColor: Colors.white,
                  pressedColor: const Color(0xFF367761),
                  children: {
                    "Friends": SizedBox(
                      height: 36,
                      child: Center(
                        child: Text(
                          "Friends",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: selectedSegment == "Friends"
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    "Global": SizedBox(
                      height: 36,
                      child: Center(
                        child: Text(
                          "Global",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: selectedSegment == "Global"
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  },
                ),
              ),
              Expanded(
                child: selectedSegment == "Friends"
                    ? _buildFriendsList()
                    : _buildGlobalList(userList, '6 day 18 hours 27 mins'),
              ),
            ],
          ),
          selectedSegment == "Friends"
              ? Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MangeFriendList()),
                      );
                    },
                    child: Container(
                        color: const Color(0xFF224d3c),
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        alignment: Alignment.center,
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Icon(
                              Icons.arrow_upward_sharp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            'Open Bottom Page',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ])),
                  ),
                )
              : Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Stack(
                    children: [
                      // Background Container
                      Container(
                        height: 85,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFF2b775b),
                          borderRadius:
                              BorderRadius.circular(4), // Rounded corners
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.green[200],
                                child:
                                    const Icon(Icons.eco, color: Colors.white),
                              ),
                            ),
                            // User Information
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Shyam vora',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            const Icon(Icons.eco,
                                                color: Colors.green, size: 20),
                                            const SizedBox(width: 5),
                                            Text(
                                              '0',
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              width: 30,
                                            ),
                                            const Icon(Icons.monetization_on,
                                                color: Colors.amber, size: 20),
                                            const SizedBox(width: 5),
                                            Text(
                                              '0',
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Text(
                                      ' 0 mins',
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 15, // Align to the right
                        top: 0, // Vertical alignment
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 7, vertical: 2),
                            decoration: BoxDecoration(
                                color: const Color(0xFFf7f294), // Green color
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.elliptical(23, 23),
                                    bottomRight: Radius.elliptical(
                                        10, 10)) // Rounded shape
                                ),
                            child: Text(
                              '5000+',
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
        ],
      ),
    );
  }

  // Function to build Friends List
  Widget _buildFriendsList() {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: const Color(0xFF1a3e32),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: const Color.fromARGB(255, 175, 196, 168),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Friend#${index + 01}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(Icons.eco,
                                    color: Colors.green, size: 16),
                                const SizedBox(width: 5),
                                Text(
                                  '${(index + 01) * 02}',
                                  style: const TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  width: 60,
                                ),
                                const Icon(Icons.eco,
                                    color: Colors.green, size: 16),
                                const SizedBox(width: 4),
                                Text(
                                  '${index * 5}',
                                  style: const TextStyle(color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 90),
                                  child: Text(
                                    '${(index + 01) * 1256} mins',
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Function to build Global List
  Widget _buildGlobalList(
      List<Map<String, dynamic>> userList, String timeLeft) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Text(
                'Time left in this round',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(height: 10),
              Text(
                timeLeft,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ),
        // List of Users
        Expanded(
          child: ListView.builder(
            itemCount: userList.length,
            itemBuilder: (context, index) {
              final user = userList[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Stack(
                  children: [
                    // Background Container
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1a3e32),
                        borderRadius:
                            BorderRadius.circular(4), // Rounded corners
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor:
                                  const Color.fromARGB(255, 175, 196, 168),
                              child: Text(
                                '${index + 1}', // Rank
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          // User Information
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        user['name'] ?? 'User ${index + 1}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.eco,
                                              color: Colors.green, size: 20),
                                          const SizedBox(width: 5),
                                          Text(
                                            '${user['trees'] ?? 0} trees',
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          const Icon(Icons.monetization_on,
                                              color: Colors.amber, size: 20),
                                          const SizedBox(width: 5),
                                          Text(
                                            '${user['coins'] ?? 0} coins',
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Text(
                                    '${user['minutes'] ?? 0} mins',
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 15, // Align to the right
                      top: 0, // Vertical alignment
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 7, vertical: 2),
                          decoration: BoxDecoration(
                              color: const Color(0xFF367761), // Green color
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.elliptical(23, 23),
                                  bottomRight: Radius.elliptical(
                                      10, 10)) // Rounded shape
                              ),
                          child: Text(
                            '${index + 1}', // Rank number
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
