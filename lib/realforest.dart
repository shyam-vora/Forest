import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class realForest extends StatefulWidget {
  const realForest({super.key});

  @override
  State<realForest> createState() => _realForestState();
}

class _realForestState extends State<realForest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: Image.asset(
                'assets/real.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Real Forest',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Icon(Icons.question_mark_rounded),
                          ],
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.share),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 16, top: 10),
              child: Column(
                children: [
                  const Text(
                    'Stay focused and plant real trees on the earth',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      data('0', 'by you'),
                      data('0', 'by friends'),
                      data('1,748,779', 'by everyone')
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 16, bottom: 8),
                    child: Divider(),
                  ),
                  Text(
                    'curent tree planting partner',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Trees for the future',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/p.png'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'TRESS\nFOR THE\nFUTURE',
                          style: TextStyle(
                              color: Color(0xFF1a5634),
                              fontWeight: FontWeight.w900),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Trees for the Future is improving the livelihoods of impoverished farmers by revitalizing degraded lands. Since 1989, with our experience in planting over 200 million trees all over the world, we have demonstrated the transformative power of trees in helping people break out of the poverty trap while also addressing the global environment. Today, our work in East and West Africa is helping to build a world where people can leave a legacy of opportunity through sustainable practices and productive lands for future generations.',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 22,
                          ),
                          Text(
                            'We currently have 14 projects underway in five countries in Sub-Saharan Africa. Our focus is on the implementation of "Forest Garden Programs" in Cameroon, Kenya, Senegal, Uganda, and Tanzania, as these are areas where we are having the biggest impact and seeing amazing results.',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    'our sponsor page on tree for the future',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 75,
        color: Color.fromRGBO(255, 255, 255, 1),
        child: Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Plant a real tree',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Plase unlock Cloud Forest',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      backgroundColor: Color(0xFF95c987)),
                  child: Text('More info.'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget data(String label, String description) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          description,
          style: const TextStyle(fontSize: 14, color: Colors.black),
        ),
      ],
    );
  }
}
