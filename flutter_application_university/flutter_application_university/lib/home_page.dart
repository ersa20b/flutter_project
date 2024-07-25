import 'package:flutter/material.dart';
import 'package:flutter_application_university/my_card.dart';
import 'package:flutter_application_university/setting_page.dart';
import 'package:flutter_application_university/task_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.grey.shade900,
            onTap: (int index) {
              if (index == 1) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TasksPage()));
              } else if (index == 2) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettengsPage()));
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.square), label: 'Tasks '),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settengs'),
            ]),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Home Page',
            style: TextStyle(
                color: Colors.grey.shade600, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8),
            child: ListView(children: const [
              MyCard(),
              MyCard(),
            ])));
  }
}
