import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:untitled/achievents.dart';
import 'package:untitled/forest.dart';
import 'package:untitled/Friends/frineds.dart';
import 'package:untitled/News/news.dart';
import 'package:untitled/realforest.dart';
import 'package:untitled/setting.dart';
import 'package:untitled/Store/store.dart';
import 'package:untitled/tages.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:async';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, dynamic>> favoriteCombinations = [
    {
      'image': 'assets/store.jpeg',
      'title': "Combination 1",
      'description':
          "Perfect for nature lovers. Plant and nurture trees easily.",
      'price': "Unlock ₹330.00",
      'discount': "Now 15% off! (Regular Price: ₹390.00)",
    },
    {
      'image': 'assets/store.jpeg',
      'title': "Combination 2",
      'description':
          "Perfect for nature lovers. Plant and nurture trees easily.",
      'price': "Unlock ₹450.00",
      'discount': "Special offer: 10% off!",
    },
    {
      'image': 'assets/store.jpeg',
      'title': "Combination 3",
      'description': "Customizable options for your favorite plantations.",
      'price': "Unlock ₹500.00",
      'discount': "20% off for a limited time!",
    },
  ];
  int _currentValue = 5;
  double _sliderValue = 600;
  int Min = 10;
  int Second = 0;
  String selectedSegment = "Planting Setting";
  String? selectedTag;
  Timer? _timer;
  bool isTimerRunning = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF50A387),
      appBar: AppBar(
        backgroundColor: const Color(0xFF50A387),
        centerTitle: true,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: StatefulBuilder(
                      builder: (context, setState) {
                        String selectedSegments = 'Timer';
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 60,
                              width: double.infinity,
                              color: Color(0xFF50A387),
                              child: CupertinoSlidingSegmentedControl<String>(
                                backgroundColor: Colors.black.withOpacity(0.1),
                                thumbColor: Colors.white,
                                groupValue: selectedSegments,
                                onValueChanged: (value) {
                                  setState(() {
                                    if (value != null) {
                                      selectedSegments = value;
                                      print(
                                          "Selected segment updated to: $selectedSegments");
                                    }
                                  });
                                },
                                children: {
                                  "Timer": Text(
                                    "Timer",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: selectedSegments == "Timer"
                                          ? Colors.black
                                          : Colors.white,
                                    ),
                                  ),
                                  "Stopwatch": Text(
                                    "Stopwatch",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: selectedSegments == "Stopwatch"
                                          ? Colors.black
                                          : Colors.white,
                                    ),
                                  ),
                                },
                              ),
                            ),
                            SizedBox(height: 15),
                            if (selectedSegments == "Timer") ...[
                              Divider(
                                  thickness: 1, color: Colors.grey.shade300),
                              ListTile(
                                leading: Icon(Icons.local_fire_department,
                                    color: Color(0xFF1A7739)),
                                title: Text('Deep focus',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                subtitle: Text(
                                  'You will be guided back if you leave the app. Pro users can set Allow List.',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Divider(
                                  thickness: 1, color: Colors.grey.shade300),
                              ListTile(
                                leading:
                                    Icon(Icons.group, color: Color(0xFF1A7739)),
                                title: Text('Plant together',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                subtitle: Text(
                                  'If one fails, all trees wither.',
                                  style: TextStyle(fontSize: 12),
                                ),
                                trailing: Switch(
                                  value: false,
                                  onChanged: (value) {
                                    // Handle switch toggle
                                  },
                                  activeColor: Color(0xFF1A7739),
                                ),
                              ),
                            ] else if (selectedSegments == "Stopwatch") ...[
                              Divider(
                                  thickness: 1, color: Colors.grey.shade300),
                              ListTile(
                                leading:
                                    Icon(Icons.timer, color: Color(0xFF1A7739)),
                                title: Text('Stopwatch mode',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                subtitle: Text(
                                  'Track your focus duration precisely.',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Divider(
                                  thickness: 1, color: Colors.grey.shade300),
                              // ListTile(
                              //   leading: Icon(Icons.history,
                              //       color: Color(0xFF1A7739)),
                              //   title: Text('Session history',
                              //       style:
                              //           TextStyle(fontWeight: FontWeight.bold)),
                              //   subtitle: Text(
                              //     'Review your previous focus sessions.',
                              //     style: TextStyle(fontSize: 12),
                              //   ),
                              // ),
                            ]
                          ],
                        );
                      },
                    ),
                  );
                },
              );
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.hourglass_top, color: Colors.white, size: 20),
                SizedBox(width: 10),
                Container(
                  width: 1,
                  height: 18,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                const Icon(Icons.grass, color: Colors.white, size: 20),
              ],
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.all(0.3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            child: Image.asset(
                              'assets/store.jpeg',
                              fit: BoxFit.fill,
                              height: 140,
                              width: 500,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Sunshine Exlixir Shop',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 20, right: 20, bottom: 10),
                            child: Text(
                              'When Sunshine Elixir is active, triple coin rewards will be given after planting trees',
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12, right: 8),
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.1)),
                                  child: Center(
                                      child: Icon(
                                    size: 40,
                                    Icons.monetization_on,
                                    color: Colors.amber,
                                  )),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Bottle of\nSunshine Elixir',
                                    ),
                                    Text(
                                      '1 Week',
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton.icon(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            content: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  "Are You Sure to Purchse",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(4),
                                                        ),
                                                        backgroundColor:
                                                            Color.fromARGB(255,
                                                                146, 156, 151),
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                          horizontal: 20,
                                                        ),
                                                      ),
                                                      child: const Text(
                                                        'Cancle',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ),
                                                    ElevatedButton(
                                                      onPressed: () {},
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(4),
                                                        ),
                                                        backgroundColor:
                                                            Color.fromARGB(255,
                                                                79, 169, 124),
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                          horizontal: 20,
                                                        ),
                                                      ),
                                                      child: const Text(
                                                        'Unlock',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          );
                                        });
                                  },
                                  icon: Icon(
                                    Icons.currency_rupee,
                                    size: 14,
                                    color: Colors.black,
                                  ),
                                  label: Text(
                                    "90.00",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.amber,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 12, bottom: 10, right: 2),
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.1)),
                                  child: Center(
                                      child: Icon(
                                    size: 40,
                                    Icons.monetization_on,
                                    color: Colors.amber,
                                  )),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Bottle of\nSunshine Elixir',
                                    ),
                                    Text(
                                      '1 Week',
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton.icon(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            content: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  "Are You Sure to Purchse",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(4),
                                                        ),
                                                        backgroundColor:
                                                            Color.fromARGB(255,
                                                                146, 156, 151),
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                          horizontal: 20,
                                                        ),
                                                      ),
                                                      child: const Text(
                                                        'Cancle',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ),
                                                    ElevatedButton(
                                                      onPressed: () {},
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(4),
                                                        ),
                                                        backgroundColor:
                                                            Color.fromARGB(255,
                                                                79, 169, 124),
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                          horizontal: 20,
                                                        ),
                                                      ),
                                                      child: const Text(
                                                        'Unlock',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          );
                                        });
                                  },
                                  icon: Icon(
                                    Icons.currency_rupee,
                                    size: 14,
                                    color: Colors.black,
                                  ),
                                  label: Text(
                                    "180.00",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.amber,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  });
            },
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  padding:
                      EdgeInsets.only(top: 2, bottom: 2, left: 18, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '300',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        color: Color(0xFFa6dc3e),
                        Icons.add_box_sharp,
                        size: 20,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 8.5,
                  left: -80,
                  right: 0,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.yellow.shade700,
                        shape: BoxShape.circle,
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.black26,
                        //     blurRadius: 4,
                        //     offset: Offset(2, 2),
                        //   ),
                        // ],
                      ),
                      child: Icon(
                        Icons.monetization_on,
                        size: 15,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        width: 185,
        backgroundColor: const Color(0xFF50a387),
        child: ListView(
          children: [
            Container(
              height: 100,
              child: DrawerHeader(
                decoration: const BoxDecoration(color: Color(0xFF76bc86)),
                child: Text(
                  'Pro version',
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.park, color: Colors.white),
                      title: Text(
                        'Forest',
                        style: GoogleFonts.nunito(
                            color: Colors.white, fontSize: 16),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Forest()),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.schedule, color: Colors.white),
                      title: Text(
                        'Timetable',
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.label, color: Colors.white),
                      title: Text(
                        'Tages',
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Tags()),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.people, color: Colors.white),
                      title: Text(
                        'Frieds',
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Friend()),
                        );
                      },
                    ),
                    ListTile(
                      leading:
                          const Icon(Icons.emoji_events, color: Colors.white),
                      title: Text(
                        'Achievements',
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => achieveents()),
                        );
                      },
                    ),
                    ListTile(
                      leading:
                          const Icon(Icons.shopping_cart, color: Colors.white),
                      title: Text(
                        'Store',
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Store()),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.nature, color: Colors.white),
                      title: Text(
                        'Real Forest',
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => realForest()),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.newspaper, color: Colors.white),
                      title: Text(
                        'News',
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => News()),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings, color: Colors.white),
                      title: Text(
                        'Settings',
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Setting()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Text(
                "You have focused\nfor 1 min today.",
                style: GoogleFonts.nunito(
                  fontSize: 25,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SleekCircularSlider(
                  onChange: (value) {
                    setState(() {
                      _sliderValue = value;
                      Min = (value ~/ 60);
                      Second = (value % 60).toInt();
                    });
                  },
                  max: 7200,
                  min: 600,
                  initialValue: _sliderValue,
                  appearance: CircularSliderAppearance(
                    startAngle: 250,
                    angleRange: 360,
                    size: 220,
                    animationEnabled: true,
                    customColors: CustomSliderColors(
                      trackColor: Color(0xFFcdcf7c),
                      progressBarColor: Color(0xFF8cc924),
                      dotColor: Color(0xFF8cc924),
                      shadowColor: Colors.white,
                    ),
                    customWidths: CustomSliderWidths(
                        progressBarWidth: 20, handlerSize: 20, trackWidth: 20),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  // borderRadius: BorderRadius.circular(300),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2C6w_qnDXYxytw84PfcKU1XT0Ard7TwrHLA&s ',
                    // color: Color(0xFFe4e5a3),
                    width: 135,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 22),
            Container(
              height: 30,
              width: 90,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    size: 15,
                    Icons.edit,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '$selectedTag',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                builder: (context) {
                  return StatefulBuilder(
                    builder: (context, setState) {
                      return Container(
                        // padding: const EdgeInsets.all(16),
                        height: MediaQuery.of(context).size.height * 0.8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              height: 60,
                              width: double.infinity,
                              color: Color(0xFF50A387),
                              child: CupertinoSlidingSegmentedControl<String>(
                                backgroundColor: Colors.black.withOpacity(0.1),
                                thumbColor: Colors.white,
                                groupValue: selectedSegment,
                                onValueChanged: (value) {
                                  setState(() {
                                    selectedSegment = value!;
                                  });
                                },
                                children: {
                                  "Planting Setting": Text(
                                    "Planting Setting",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          selectedSegment == "Planting Setting"
                                              ? Colors.black
                                              : Colors.white,
                                    ),
                                  ),
                                  "My Favorite": GestureDetector(
                                    onTap: () {
                                      showScrollableFavoriteDialog(context);
                                    },
                                    child: Text(
                                      "My Favorite",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: selectedSegment == "My Favorite"
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                    ),
                                  )
                                },
                              ),
                            ),
                            // const SizedBox(height: 3),
                            if (selectedSegment == "Planting Setting")
                              Expanded(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8, left: 15, right: 8),
                                      child: Text(
                                        "Trees (Recently Selected)",
                                        style: GoogleFonts.nunito(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, right: 8),
                                      child: SizedBox(
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Container(
                                            width: 2000,
                                            height: 250,
                                            child: GridView.builder(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 22,
                                                crossAxisSpacing: 8,
                                                mainAxisSpacing: 8,
                                              ),
                                              itemCount: 66,
                                              itemBuilder: (context, index) {
                                                return Icon(
                                                  Icons.yard_rounded,
                                                  color: Colors.green,
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.white,
                                      height: 3,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 4, left: 8, right: 8),
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            top: 8, left: 8, right: 8),
                                        height: 110,
                                        // color: Colors.amber,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Focused Time",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 15),
                                            DottedDashedLine(
                                                height: 0,
                                                width: 500,
                                                axis: Axis.horizontal),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            NumberPicker(
                                                axis: Axis.horizontal,
                                                minValue: 5,
                                                maxValue: 120,
                                                value: _currentValue,
                                                haptics: true,
                                                infiniteLoop: true,
                                                itemCount: 7,
                                                step: 5,
                                                itemWidth:
                                                    MediaQuery.sizeOf(context)
                                                            .width /
                                                        7,
                                                textStyle: TextStyle(),
                                                selectedTextStyle: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                                onChanged: (value) {
                                                  setState(() {
                                                    _currentValue = value;
                                                  });
                                                })
                                          ],
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.white,
                                      height: 3,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 4, left: 8, right: 8),
                                      child: Container(
                                        // color: Colors.brown,
                                        padding: EdgeInsets.only(
                                            top: 8, left: 8, right: 8),
                                        height: 70,
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Tages',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Expanded(
                                              child: SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          selectedTag = 'Work';
                                                        });
                                                      },
                                                      child: Container(
                                                        margin: const EdgeInsets
                                                            .symmetric(
                                                            horizontal: 4),
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 8,
                                                                vertical: 3),
                                                        decoration: BoxDecoration(
                                                            color: selectedTag ==
                                                                    'Work'
                                                                ? Colors.white
                                                                : Colors.black
                                                                    .withOpacity(
                                                                        0.1),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8)),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            CircleAvatar(
                                                              radius: 4,
                                                              backgroundColor:
                                                                  Colors.orange,
                                                            ),
                                                            const SizedBox(
                                                                width: 4),
                                                            Text(
                                                              'Work',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    selectedTag ==
                                                                            'Work'
                                                                        ? FontWeight
                                                                            .bold
                                                                        : null,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          selectedTag =
                                                              'Social';
                                                        });
                                                      },
                                                      child: Container(
                                                        margin: const EdgeInsets
                                                            .symmetric(
                                                            horizontal: 4),
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 8,
                                                                vertical: 3),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: selectedTag ==
                                                                  'Social'
                                                              ? Colors.white
                                                              : Colors.black
                                                                  .withOpacity(
                                                                      0.1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            CircleAvatar(
                                                              radius: 4,
                                                              backgroundColor:
                                                                  Colors.blue,
                                                            ),
                                                            const SizedBox(
                                                                width: 4),
                                                            Text(
                                                              'Social',
                                                              style: TextStyle(
                                                                fontWeight: selectedTag ==
                                                                        'Social'
                                                                    ? FontWeight
                                                                        .bold
                                                                    : null,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          selectedTag = 'Study';
                                                        });
                                                      },
                                                      child: Container(
                                                        margin: const EdgeInsets
                                                            .symmetric(
                                                            horizontal: 4),
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 8,
                                                                vertical: 3),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: selectedTag ==
                                                                  'Study'
                                                              ? Colors.white
                                                              : Colors.black
                                                                  .withOpacity(
                                                                      0.1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            CircleAvatar(
                                                              radius: 4,
                                                              backgroundColor:
                                                                  Colors.green,
                                                            ),
                                                            const SizedBox(
                                                                width: 4),
                                                            Text(
                                                              'Study',
                                                              style: TextStyle(
                                                                fontWeight: selectedTag ==
                                                                        'Study'
                                                                    ? FontWeight
                                                                        .bold
                                                                    : null,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          selectedTag = 'Relax';
                                                        });
                                                      },
                                                      child: Container(
                                                        margin: const EdgeInsets
                                                            .symmetric(
                                                            horizontal: 4),
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 8,
                                                                vertical: 3),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: selectedTag ==
                                                                  'Relax'
                                                              ? Colors.white
                                                              : Colors.black
                                                                  .withOpacity(
                                                                      0.1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            CircleAvatar(
                                                              radius: 4,
                                                              backgroundColor:
                                                                  Colors.red,
                                                            ),
                                                            const SizedBox(
                                                                width: 4),
                                                            Text(
                                                              'Relax',
                                                              style: TextStyle(
                                                                fontWeight: selectedTag ==
                                                                        'Relax'
                                                                    ? FontWeight
                                                                        .bold
                                                                    : null,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          selectedTag =
                                                              'Fitness';
                                                        });
                                                      },
                                                      child: Container(
                                                        margin: const EdgeInsets
                                                            .symmetric(
                                                            horizontal: 4),
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 8,
                                                                vertical: 3),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: selectedTag ==
                                                                  'Fitness'
                                                              ? Colors.white
                                                              : Colors.black
                                                                  .withOpacity(
                                                                      0.1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            CircleAvatar(
                                                              radius: 4,
                                                              backgroundColor:
                                                                  Colors.purple,
                                                            ),
                                                            const SizedBox(
                                                                width: 4),
                                                            Text(
                                                              'Fitnes',
                                                              style: TextStyle(
                                                                fontWeight: selectedTag ==
                                                                        'Fitness'
                                                                    ? FontWeight
                                                                        .bold
                                                                    : null,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 4,
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            top: 8, left: 20, right: 8),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        height: 80,
                                        width: double.infinity,
                                        child: Row(
                                          children: [
                                            Icon(Icons.heart_broken_rounded),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            CircleAvatar(
                                              radius: 30,
                                              backgroundColor:
                                                  Colors.green[200],
                                              child: const Icon(Icons.eco,
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(Icons
                                                        .access_time_filled_rounded),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Text('15')
                                                  ],
                                                ),
                                                Text('Unset')
                                              ],
                                            ),
                                            SizedBox(
                                              width: 75,
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  if (isTimerRunning) {
                                                    _timer?.cancel();
                                                    isTimerRunning = false;
                                                    Navigator.pop(context);
                                                  } else {
                                                    startCountdown();
                                                    isTimerRunning = true;
                                                    Navigator.pop(context);
                                                  }
                                                });
                                              },
                                              style: isTimerRunning
                                                  ? ElevatedButton.styleFrom(
                                                      backgroundColor: Colors
                                                          .transparent
                                                          .withOpacity(0.0),
                                                      side: BorderSide(
                                                          color: Colors.white),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 30,
                                                              right: 30,
                                                              top: 0,
                                                              bottom: 0),
                                                    )
                                                  : ElevatedButton.styleFrom(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      backgroundColor:
                                                          const Color(
                                                              0xFF67D1AD),
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 40),
                                                    ),
                                              child: Text(
                                                isTimerRunning
                                                    ? 'Cancel'
                                                    : 'Plant',
                                                style: GoogleFonts.nunito(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ]))
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
              child: Text(
                // '${Min.toString()}:${Second.toString().padLeft(2, '0')}
                '${Min.toString()}:${Second.toString().padLeft(2, '0')}',
                style: GoogleFonts.nunito(
                  fontSize: 90,
                  color: Colors.white,
                ),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     setState(() {
            //       if (isTimerRunning) {
            //         _timer?.cancel();
            //         isTimerRunning = false;
            //       } else {
            //         startCountdown();
            //         isTimerRunning = true;
            //       }
            //     });
            //   },
            //   style: isTimerRunning
            //       ? ElevatedButton.styleFrom(
            //           backgroundColor: Colors.transparent.withOpacity(0.0),
            //           side: BorderSide(color: Colors.white),
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8),
            //           ),
            //           padding: const EdgeInsets.only(
            //               left: 30, right: 30, top: 0, bottom: 0),
            //         )
            //       : ElevatedButton.styleFrom(
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8),
            //           ),
            //           backgroundColor: const Color(0xFF67D1AD),
            //           padding: const EdgeInsets.symmetric(horizontal: 40),
            //         ),
            //   child: Text(
            //     isTimerRunning ? 'Cancel' : 'Plant',
            //     style: GoogleFonts.nunito(
            //       color: Colors.white,
            //       fontSize: 16,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer if the widget is disposed
    super.dispose();
  }

  void startCountdown() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (Second > 0) {
        setState(() {
          Second--; // Decrease seconds by 1
        });
      } else if (Min > 0) {
        setState(() {
          Min--; // If seconds are 0, reduce minutes by 1
          Second = 59; // Reset seconds to 59
        });
      } else {
        _timer?.cancel(); // Stop the timer when it reaches 0:00
      }
    });
  }

  void showScrollableFavoriteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CarouselSlider.builder(
          itemCount: favoriteCombinations.length,
          itemBuilder: (context, index, realIndex) {
            final combination = favoriteCombinations[index];
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          combination['image'],
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        combination['title'] ?? '',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          combination['description'] ?? '',
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF8cc914),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        combination['price'],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 4, bottom: 4),
                    child: Text(
                      combination['discount'] ?? '',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
          options: CarouselOptions(
            enlargeCenterPage: false,
            enableInfiniteScroll: false,
            autoPlay: false,
            height: 500,
          ),
        );
      },
    );
  }
}
