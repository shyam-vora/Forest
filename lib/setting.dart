import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool rewardedAds = true;
  bool keepScreenOn = false;
  bool extendTimeLimit = false;
  bool witherTree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: const Color(0xFF306e57),
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xFF43a47c),
                    borderRadius: BorderRadius.circular(10)),
                height: 80,
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.king_bed_rounded,
                            color: Colors.yellow, size: 28),
                        SizedBox(width: 8),
                        Text(
                          "Pro Version",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Positioned(
                      right: 0,
                      top: 30,
                      child: Text(
                        'More info',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              // User Info Section
              Container(
                margin: EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.1), // Add shadow for elevation
                      blurRadius: 6, // Blur effect for shadow
                      offset: Offset(0, 3), // Vertical offset
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.green[200],
                        child: const Icon(Icons.eco, color: Colors.white),
                      ),
                      title: const Text("Shyam Vora"),
                      subtitle: const Text("shyamvora2310@gmail.com"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: const Divider(
                        height: 0.5,
                      ),
                    ),
                    // Pro Version Button
                    ListTile(
                      title: const Text("Pro Version"),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Divider(
                        height: 0,
                        thickness: 0.8,
                      ),
                    ),
                    ListTile(
                      title: const Text("Gift Box"),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Divider(
                        height: 0,
                        thickness: 0.8,
                      ),
                    ),
                    ListTile(
                      title: const Text("Sync"),
                      trailing: const Icon(Icons.refresh),
                      onTap: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Divider(
                        height: 0,
                        thickness: 0.8,
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              // Planting and Timer Section Header

              Container(
                margin: EdgeInsets.only(top: 9),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.1), // Add shadow for elevation
                      blurRadius: 6, // Blur effect for shadow
                      offset: Offset(0, 3), // Vertical offset
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        " Planting and Timer",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Divider(
                        height: 20,
                      ),
                    ),
                    ListTile(
                      title: const Text("App Allow List"),
                      trailing: const Text("Off"),
                      onTap: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Divider(
                        height: 0,
                        thickness: 0.8,
                      ),
                    ),
                    ListTile(
                      title: const Text("Custom Phrases"),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Divider(
                        height: 0,
                        thickness: 0.8,
                      ),
                    ),
                    SwitchListTile(
                      title: const Text("Rewarded Ads"),
                      value: rewardedAds,
                      onChanged: (value) {
                        setState(() {
                          rewardedAds = value;
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Divider(
                        height: 0,
                        thickness: 0.8,
                      ),
                    ),
                    SwitchListTile(
                      title: const Text("Keep Screen On"),
                      value: keepScreenOn,
                      onChanged: (value) {
                        setState(() {
                          keepScreenOn = value;
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Divider(
                        height: 0,
                        thickness: 0.8,
                      ),
                    ),
                    SwitchListTile(
                      title: const Text("Extend Time Limit to 3hr"),
                      value: extendTimeLimit,
                      onChanged: (value) {
                        setState(() {
                          extendTimeLimit = value;
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Divider(
                        height: 0,
                        thickness: 0.8,
                      ),
                    ),
                    SwitchListTile(
                      title:
                          const Text("Wither the tree when Forest is closed"),
                      value: witherTree,
                      onChanged: (value) {
                        setState(() {
                          witherTree = value;
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Divider(
                        height: 0,
                        thickness: 0.8,
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.1), // Add shadow for elevation
                      blurRadius: 6, // Blur effect for shadow
                      offset: Offset(0, 3), // Vertical offset
                    ),
                  ],
                ),
                margin: EdgeInsets.only(top: 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          "Forest overview",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 20,
                          thickness: 0.8,
                        ),
                      ),
                      ListTile(
                        title: const Text("App Allow List"),
                        trailing: const Text("sunday"),
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      ListTile(
                        title: const Text("Custom Phrases"),
                        trailing: const Text('00:00 (default)'),
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      SwitchListTile(
                        title: const Text("Daily Focused Time in Hours"),
                        value: rewardedAds,
                        onChanged: (value) {
                          setState(() {
                            rewardedAds = value;
                          });
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      SwitchListTile(
                        title: const Text(
                            "Don't Expand Forest Land Unless it's Full"),
                        value: keepScreenOn,
                        onChanged: (value) {
                          setState(() {
                            keepScreenOn = value;
                          });
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      SwitchListTile(
                        title: const Text("Arrange Trees by Planting Time "),
                        value: extendTimeLimit,
                        onChanged: (value) {
                          setState(() {
                            extendTimeLimit = value;
                          });
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      SizedBox(height: 10),
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.1), // Add shadow for elevation
                      blurRadius: 6, // Blur effect for shadow
                      offset: Offset(0, 3), // Vertical offset
                    ),
                  ],
                ),
                margin: EdgeInsets.only(top: 8, bottom: 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          "Social and Friend",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 20,
                          thickness: 0.8,
                        ),
                      ),
                      SwitchListTile(
                        title: const Text("Hidden from Global Ranking"),
                        value: rewardedAds,
                        onChanged: (value) {
                          setState(() {
                            rewardedAds = value;
                          });
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      SwitchListTile(
                        title: const Text(
                            "Allow Friend REquest sent Throught Profile "),
                        value: keepScreenOn,
                        onChanged: (value) {
                          setState(() {
                            keepScreenOn = value;
                          });
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      SwitchListTile(
                        title: const Text("Aollow Plant Together Notification"),
                        value: extendTimeLimit,
                        onChanged: (value) {
                          setState(() {
                            extendTimeLimit = value;
                          });
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      SizedBox(height: 10),
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.1), // Add shadow for elevation
                      blurRadius: 6, // Blur effect for shadow
                      offset: Offset(0, 3), // Vertical offset
                    ),
                  ],
                ),
                margin: EdgeInsets.only(top: 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          "Sound and Notification",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 20,
                          thickness: 0.8,
                        ),
                      ),
                      ListTile(
                        title: const Text("Planting Redminder"),
                        // trailing: const Text("sunday"),
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      ListTile(
                        title: const Text("Ringtone mode during planting"),
                        trailing: const Text('System default'),
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      SwitchListTile(
                        title: const Text("Sound Effect"),
                        value: rewardedAds,
                        onChanged: (value) {
                          setState(() {
                            rewardedAds = value;
                          });
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      ListTile(
                        title: const Text("Notification"),
                        // trailing: const Text('System default'),
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      SizedBox(height: 10),
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.1), // Add shadow for elevation
                      blurRadius: 6, // Blur effect for shadow
                      offset: Offset(0, 3), // Vertical offset
                    ),
                  ],
                ),
                margin: EdgeInsets.only(top: 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          "Other",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 20,
                          thickness: 0.8,
                        ),
                      ),
                      ListTile(
                        title: const Text("English"),
                        trailing: const Text("Chnage language"),
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      ListTile(
                        title: const Text("Theme"),
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      SwitchListTile(
                        title: const Text("Connect Only on Wi-Fi"),
                        value: rewardedAds,
                        onChanged: (value) {
                          setState(() {
                            rewardedAds = value;
                          });
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      SwitchListTile(
                        title: const Text(
                            "Automatically send usage and Crash Reports"),
                        value: rewardedAds,
                        onChanged: (value) {
                          setState(() {
                            rewardedAds = value;
                          });
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      SizedBox(height: 10),
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.1), // Add shadow for elevation
                      blurRadius: 6, // Blur effect for shadow
                      offset: Offset(0, 3), // Vertical offset
                    ),
                  ],
                ),
                margin: EdgeInsets.only(top: 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          "About Forest ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 20,
                          thickness: 0.8,
                        ),
                      ),
                      ListTile(
                        title: const Text("FAQ and Support"),
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      ListTile(
                        title: const Text("Submit a Suggestion"),
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      ListTile(
                        title: const Text("Rate us 5 stars"),
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      ListTile(
                        title: const Text("Privscy Policy"),
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      ListTile(
                        title: const Text("Core concept"),
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      ListTile(
                        title: const Text("Offical Weibo page"),
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      ListTile(
                        title: const Text("Join Forest Beta Program"),
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      SizedBox(height: 10),
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.1), // Add shadow for elevation
                      blurRadius: 6, // Blur effect for shadow
                      offset: Offset(0, 3), // Vertical offset
                    ),
                  ],
                ),
                margin: EdgeInsets.only(top: 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          "About Us ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 20,
                          thickness: 0.8,
                        ),
                      ),
                      ListTile(
                        title: const Text("Sleep Town"),
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      ListTile(
                        title: const Text("WaterDo"),
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      ListTile(
                        title: const Text("Your Personal Flower"),
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      ListTile(
                        title: const Text("Wallpaper Generator"),
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Divider(
                          height: 0,
                          thickness: 0.8,
                        ),
                      ),
                      SizedBox(height: 10),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
