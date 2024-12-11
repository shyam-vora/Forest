import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:untitled/tages.dart';

class Forest extends StatefulWidget {
  const Forest({super.key});

  @override
  State<Forest> createState() => _ForestState();
}

class _ForestState extends State<Forest> {
  final List<Map<String, dynamic>> tags = [
    {'name': 'Study', 'color': Colors.purple},
    {'name': 'Sport', 'color': Colors.green},
    {'name': 'Work', 'color': Colors.lightBlue},
    {'name': 'Entertaniment', 'color': Colors.yellow},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF306e57),
        centerTitle: true,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Overview',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.share, color: Colors.white, size: 30),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(children: [
            Container(
              // margin: EdgeInsets.only(bottom: 50),
              height: 700,
              width: double.infinity, // Use full width of the screen
              child: Column(
                children: [
                  Container(
                    height: 400,
                    color: Color(0xFF224d3c),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10).copyWith(bottom: 0),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 31, 67, 60),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 40,
                          child: Row(children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Day',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                color: Colors.transparent,
                                child: const Center(
                                  child: Text(
                                    'Week',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                color: Colors.transparent,
                                child: const Center(
                                  child: Text(
                                    'Month',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                color: Colors.transparent,
                                child: const Center(
                                  child: Text(
                                    'Year',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 15, left: 10),
                          child: Row(children: [
                            Padding(
                              padding: EdgeInsets.only(right: 30),
                              child: Icon(Icons.arrow_back_ios_new,
                                  color: Colors.white),
                            ),
                            Text("November 23, 2024 (Today)",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                          ]),
                        ),
                        Image.asset(
                          'assets/p.png',
                          height: 260,
                          width: 260,
                        ),
                      ],
                    ),
                  ),
                  Container(color: Colors.white, height: 300)
                ],
              ),
            ),
            Positioned(
                top: 310,
                right: 20,
                child: Row(
                  children: [
                    Icon(Icons.import_contacts_sharp),
                    SizedBox(width: 10),
                    Icon(Icons.import_contacts_sharp)
                  ],
                )),
            Positioned(
              top: 350,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: 340,
                decoration: BoxDecoration(
                  color: const Color(0xFFf4f4f4),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Focused Time Distribution',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Divider(),
                      Text('Total Focused time: 0 min'),
                      SizedBox(height: 10),
                      Container(
                        height: 240,
                        child: SfCartesianChart(series: [
                          LineSeries(
                              xValueMapper: (datum, index) {
                                return 23;
                              },
                              yValueMapper: (datum, index) {
                                return 20;
                              },
                              dataSource: [43])
                        ]),
                      )
                    ]),
              ),
            ),
          ]),

          /// ext
          Container(
              height: 60, color: const Color.fromARGB(255, 137, 191, 138)),
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tag Distribtion(Example)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(),
                SizedBox(height: 8),
                RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    children: [
                      TextSpan(
                          text: 'Today compared with same time Yesterday: '),
                      TextSpan(
                        text: '60 M longer',
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    children: [
                      TextSpan(
                          text:
                              'Today compared with same time The Day Before '),
                      TextSpan(
                        text: 'Yesterday: 70 M shorter',
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text('Today (to this moment)'),
                SizedBox(height: 4),
                LinearProgressIndicator(
                  value: 510 / 620,
                  backgroundColor: Colors.grey[300],
                  color: Colors.green,
                ),
                SizedBox(height: 20),
                Text('Yesterday'),
                SizedBox(height: 4),
                LinearProgressIndicator(
                  value: 470 / 620,
                  backgroundColor: Colors.grey[300],
                  color: Colors.green,
                ),
                SizedBox(height: 20),
                Text('The Day Before Yesterday'),
                SizedBox(height: 4),
                LinearProgressIndicator(
                  value: 620 / 620,
                  backgroundColor: Colors.grey[300],
                  color: Colors.green,
                ),
              ],
            ),
          ),
          //thired con

          Container(
            height: 550,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            margin: EdgeInsets.all(7),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tag Distribution(Example)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(),
                Center(
                  child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHC8QU0V_Rw2dbMHz3hoDu9G1smbzXNBN3rA&s'),
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
                              radius: 6,
                            ),
                            title: Text(tags[index]['name']),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Title', style: TextStyle(fontSize: 14)),
                                SizedBox(width: 8),
                                Text('Title', style: TextStyle(fontSize: 14)),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                            height: 1,
                            thickness: 1,
                          ),
                        ],
                      );
                    },
                  ),
                ),

                // PieChart(
                //   dataMap: <String, double>{
                //     "Study": 38,
                //     "Work": 22,
                //     "Leisure": 15,
                //     "Sleep": 25,
                //   },
                //   chartType: ChartType.ring,
                //   baseChartColor: Colors.grey[300]!,
                //   ringStrokeWidth: 80,

                //   colorList: [
                //     Colors.greenAccent,
                //     Colors.blueAccent,
                //     Colors.orangeAccent,
                //     Colors.purpleAccent,
                //   ],
                //   totalValue: 100,
                // )
              ],
            ),
          ),
          Container(
            height: 210, // Adjusted height to fit the content
            margin: EdgeInsets.all(7),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Favorite tree species (Example)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(),
                Row(
                  children: [
                    Text(
                      '1',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.green,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Cherry Blossom'),
                          SizedBox(height: 4),
                          LinearProgressIndicator(
                            value: 510 / 620,
                            backgroundColor: Colors.grey[300],
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      '2',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.green,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Maple'),
                          SizedBox(height: 4),
                          LinearProgressIndicator(
                            value: 470 / 620,
                            backgroundColor: Colors.grey[300],
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      '3',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.green,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Ginkgo'),
                          SizedBox(height: 4),
                          LinearProgressIndicator(
                            value: 620 / 620,
                            backgroundColor: Colors.grey[300],
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          )
        ]),
      ),
    );
  }
}
