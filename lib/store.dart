import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled/storedetlis.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  final List<Map<String, dynamic>> items = [
    {
      'name': 'Star Coral',
      'imagePath': 'assets/store.jpeg',
      'cost': 0,
      'isFree': true,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Statue of Tada',
      'imagePath': 'assets/store.jpeg',
      'cost': 0,
      'isFree': true,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Cuckoo Clock',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
    {
      'name': 'Mushroom',
      'imagePath': 'assets/store.jpeg',
      'cost': 300,
      'isFree': false,
      'content':
          'How Can You Get One as dreamlike as i am without giving your love?',
      'date': '25/03/2025'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF306e57),
          centerTitle: true,
          title: const Text(
            'Store',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          bottom: const TabBar(
            indicatorPadding: EdgeInsets.only(bottom: 10, top: 5, left: 8),
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              color: Color(0xFF50a387),
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(20),
                right: Radius.circular(20),
              ),
            ),
            indicatorWeight: 2,
            labelColor: Colors.white,
            unselectedLabelColor: Color.fromARGB(153, 255, 255, 255),
            tabs: [
              Tab(text: "Classic"),
              Tab(text: "Exclusive"),
              Tab(text: "Sound"),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: const [
                  Text('300 ',
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                  Icon(Icons.monetization_on, color: Colors.yellow),
                ],
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            buildItemsListView("Classic"),
            buildItemsListView2("Exclusive"),
            buildItemsListView3("Sound"),
          ],
        ),
      ),
    );
  }

  Widget buildItemsListView(String category) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Accumulate coins to unlock different tree species to make your Forest lush!',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              mainAxisSpacing: 5,
              crossAxisSpacing: 20,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return GestureDetector(
                onTap: () => showCardPopup(context, index),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  item['imagePath'],
                                  height: 150,
                                  width: 170,
                                  fit: BoxFit.fill,
                                ),
                                const SizedBox(height: 8),
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    item['name'],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (item['isFree'])
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              child: const Text(
                                'Free',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('${item['cost']}',
                            style: const TextStyle(fontSize: 16)),
                        const SizedBox(width: 5),
                        const Icon(Icons.monetization_on,
                            color: Colors.yellow, size: 18),
                      ],
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

  Widget buildItemsListView2(String category) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Accumulate coins to unlock different tree species to make your Forest lush!',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              // crossAxisSpacing: 5,
              mainAxisSpacing: 1,
              childAspectRatio: 1.8,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Excluive(
                              name: item['name'],
                              date: item['date'],
                              image: item['imagePath'],
                              content: item['content'],
                              box: buildItemsListView('classic'),
                            ))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: SizedBox(
                        height: 210,
                        width: double.infinity,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  item['imagePath'],
                                  height: 150,
                                  width: 400,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    item['name'],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  //sound
  Widget buildItemsListView3(String category) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 11, right: 16, left: 16, bottom: 5),
          child: Text(
            'Accumulate coins to unlock ambient sound for a better focus moment!',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              mainAxisSpacing: 9,
              crossAxisSpacing: 0,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return GestureDetector(
                onTap: () => showCardPopup2(context, index),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      SizedBox(
                        // height: 200,
                        // width: double.infinity,
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipOval(
                                  child: Image.asset(
                                    item['imagePath'],
                                    width: 150,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  item['name'],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (item['cost'] != 'Unlocked') ...[
                            Text(
                              '${item['cost']}',
                              style: const TextStyle(fontSize: 14),
                            ),
                            const Icon(Icons.monetization_on,
                                color: Colors.yellow),
                          ] else
                            const Text(
                              'Unlocked',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  // shoow

  void showCardPopup(BuildContext context, int initialIndex) {
    showDialog(
      context: context,
      builder: (context) {
        return CarouselSlider.builder(
          options: CarouselOptions(
            initialPage: initialIndex,
            height: 450, // Adjust height for proper layout
            enableInfiniteScroll: true,
            enlargeCenterPage: false,
            autoPlay: false,
          ),
          itemCount: items.length,
          itemBuilder: (context, index, realIndex) {
            final item = items[index];
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              item['imagePath'],
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            item['name'],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            item['content'],
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 9),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(4, (i) {
                              return Column(
                                children: [
                                  const Icon(Icons.category),
                                  Text(
                                    '10-15',
                                    style: const TextStyle(color: Colors.green),
                                  ),
                                ],
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
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
                        item['cost'] == 0
                            ? 'Unlock for free'
                            : '${item['cost']} Coins',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  //show pop2

  void showCardPopup2(BuildContext context, int initialIndex) {
    showDialog(
      context: context,
      builder: (context) {
        return CarouselSlider.builder(
          options: CarouselOptions(
            initialPage: initialIndex,
            height: 470, // Adjust height for proper layout
            enableInfiniteScroll: true,
            enlargeCenterPage: false,
            autoPlay: false,
          ),
          itemCount: items.length,
          itemBuilder: (context, index, realIndex) {
            final item = items[index];
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              item['imagePath'],
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            item['name'],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            item['content'],
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 9),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                if (item['cost'] != 0)
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
                          '${item['cost']} Coins',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
              ],
            );
          },
        );
      },
    );
  }
}
