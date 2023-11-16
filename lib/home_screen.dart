import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Demo"),
        centerTitle: true,
      ),
      body: Column(children: [
        Card(
          child: ListTile(
            title: Text('Theme mood'),
            subtitle: Text('Change the theme mood'),
            onTap: () {
              Get.bottomSheet(
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                        leading: Icon(Icons.dark_mode),
                        title: Text(
                          'Dark Mood',
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                        leading: Icon(Icons.light_mode),
                        title: Text('Light Mood'),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Alert Diloge'),
            subtitle: Text('Show your alert dialoge.'),
            onTap: () {
              Get.defaultDialog(
                  titlePadding: EdgeInsets.all(20),
                  title: 'Delete Alert',
                  contentPadding: EdgeInsets.all(20),
                  middleText: 'Are you sure delete this item?',
                  confirm: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text('Yes')),
                  cancel: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text('No')));
            },
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('This is Swapon', 'Hello every one',
              mainButton: TextButton(onPressed: () {}, child: Text("tap")),
              backgroundColor: Colors.cyan,
              snackPosition: SnackPosition.BOTTOM,
              icon: Icon(Icons.star));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
