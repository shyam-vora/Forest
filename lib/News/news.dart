import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/News/newsinfo.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  // Sample news data
  final List<Map<String, dynamic>> newsData = [
    {
      "date": "2024/12/03",
      "title": "New Focus Challenge is Here! Shake Off the Winter Laziness!",
      "image": "assets/news.jpg",
      "status": "News",
      "content":
          "Struggling to stay focused during the chilly year-end? The all-new Focus Challenge is here! ✨ Earn rewards through daily check-ins and a variety of focus challenges every day! What’s more, complete enough daily challenges during the event period to unlock a challenge-exclusive tree species for free! This winter, let the Silvery Romance series challenge inspire you to shake off the laziness! "
    },
    {
      "date": "2024/11/27",
      "title": "New Rewards Unlocked! Start Earning Now!",
      "image": "assets/news.jpg",
      "status": "Ended",
      "content": "Join the Focus Challenge and stay productive this winter!",
    },
    {
      "date": "2024/11/20",
      "title": "Exciting Updates Coming Soon! Stay Tuned.",
      "image": "assets/news.jpg",
      "status": "Ended",
      "content": "Join the Focus Challenge and stay productive this winter!",
    },
    {
      "date": "2024/11/15",
      "title": "Discover the New Features We Have Just Launched!",
      "image": "assets/news.jpg",
      "status": "News",
      "content": "Join the Focus Challenge and stay productive this winter!"
    },
    {
      "date": "2024/11/15",
      "title": "Discover the New Features We Have Just Launched!",
      "image": "assets/news.jpg",
      "status": "News",
      "content": "Join the Focus Challenge and stay productive this winter!"
    },
    {
      "date": "2024/12/03",
      "title": "New Focus Challenge is Here! Shake Off the Winter Laziness!",
      "image": "assets/news.jpg",
      "status": "News",
      "content": "Join the Focus Challenge and stay productive this winter!"
    },
    {
      "date": "2024/11/27",
      "title": "New Rewards Unlocked! Start Earning Now!",
      "image": "assets/news.jpg",
      "status": "Ended",
      "content": "Join the Focus Challenge and stay productive this winter!",
    },
    {
      "date": "2024/11/20",
      "title": "Exciting Updates Coming Soon! Stay Tuned.",
      "image": "assets/news.jpg",
      "status": "Ended",
      "content": "Join the Focus Challenge and stay productive this winter!",
    },
    {
      "date": "2024/11/15",
      "title": "Discover the New Features We Have Just Launched!",
      "image": "assets/news.jpg",
      "status": "News",
      "content": "Join the Focus Challenge and stay productive this winter!"
    },
    {
      "date": "2024/11/15",
      "title": "Discover the New Features We Have Just Launched!",
      "image": "assets/news.jpg",
      "status": "News",
      "content": "Join the Focus Challenge and stay productive this winter!"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: const Color(0xFF306e57),
        title: const Text(
          'News',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Follow us on', style: TextStyle(fontSize: 17)),
                const SizedBox(height: 8),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Colors.pink,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 16),
                    GestureDetector(
                      onTap: () {},
                      child: const FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 16),
                    GestureDetector(
                      onTap: () {},
                      child: FaIcon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue[800],
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // News Grid Section
            SizedBox(
              height: 21,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.95,
                ),
                itemCount: newsData.length,
                itemBuilder: (context, index) {
                  final news = newsData[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewsDetail(
                                    title: news["title"],
                                    date: news["date"],
                                    image: news["image"],
                                    content: news["content"],
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                news["date"],
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                              const Spacer(),
                              if (news["status"] == "News")
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 106, 185, 136),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    news["status"],
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 216, 219, 218),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              if (news["status"] == "Ended")
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    // color: const Color(0xFFf8d7da),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    news["status"],
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(height: 3),
                          // News Card
                          Expanded(
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Image
                                  ClipRRect(
                                    borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(12),
                                    ),
                                    child: Image.asset(
                                      news["image"],
                                      height: 250,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  // Title
                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Text(
                                      news["title"],
                                      style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
