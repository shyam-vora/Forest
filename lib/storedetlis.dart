import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Excluive extends StatefulWidget {
  final String? name;
  final String? date;
  final String? image;
  final String? content;
  final Widget? box;

  const Excluive({this.name, this.date, this.image, this.content, this.box});

  @override
  State<Excluive> createState() => _ExcluiveState();
}

class _ExcluiveState extends State<Excluive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Image.asset(widget.image ?? "filed to load",
                width: double.infinity, height: 300, fit: BoxFit.cover),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                child: Column(
                  children: [
                    Text(
                      widget.name ?? "No name provided",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(widget.date ?? "No date available"),
                    SizedBox(
                      height: 10,
                    ),
                    Text(widget.content ?? "No content available"),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Unlock package?',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                'Are you sure to spend 240 time Crystals to Unclock?'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    backgroundColor:
                                        Color.fromARGB(255, 146, 156, 151),
                                    padding: const EdgeInsets.symmetric(
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
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    backgroundColor:
                                        Color.fromARGB(255, 79, 169, 124),
                                    padding: const EdgeInsets.symmetric(
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
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  minimumSize: Size(300, 40),
                ),
                child: Text(
                  'Unlock all',
                  style: TextStyle(color: Colors.white),
                )),
            // SizedBox(
            //   height: 20,
            // ),
            // widget.box ?? Text("No Found")
          ],
        ),
      ),
    );
  }
}
