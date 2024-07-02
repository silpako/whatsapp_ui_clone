import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class whatsapp_status extends StatelessWidget {
  final List<String> name = [
    "Sidharth",
    "Sharukh",
    "Mohan lal",
    "Sobhana",
    "Urvasi"
  ];
  final List<String> image = [
    "assets/img/sid.jpg",
    "assets/img/sharukh.jpg",
    "assets/img/mohanlal.jpg",
    "assets/img/sobhana.jpg",
    "assets/img/urvasi.jpg",
  ];
  var dateTime = [
    "Today at 10.00 pm",
    "Today at 11.00 am",
    "Today at 10.00am",
    "Yesterday at 9.00am"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/img/urvasi.jpg"),
              ),
              title: Text("My Status"),
              subtitle: Text("Today at 8.00am"),
              trailing: PopupMenuButton(itemBuilder: (context) {
                return [
                  PopupMenuItem(
                      child: Text(
                    "Settings",
                    style: TextStyle(fontSize: 12),
                  )),
                  PopupMenuItem(
                      child: Text(
                    "Status Privacy",
                    style: TextStyle(fontSize: 12),
                  )),
                ];
              }),
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Card(
                shadowColor: const Color.fromARGB(255, 145, 144, 144),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(image[index]),
                  ),
                  title: Text(
                    name[index],
                    style: TextStyle(fontSize: 15),
                  ),
                  subtitle: Text(dateTime[index]),
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.camera_alt),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
