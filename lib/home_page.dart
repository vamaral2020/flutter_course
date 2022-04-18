import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int count = 0;

  var children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [CustomSwitch()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          scrollDirection: Axis.vertical,
          children: [
            Text('CONTADOR:  $count'),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 10),
            CustomSwitch(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: AppController.instance.isDarkTheme
                      ? Colors.white
                      : Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: AppController.instance.isDarkTheme
                      ? Colors.white
                      : Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: AppController.instance.isDarkTheme
                      ? Colors.white
                      : Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
