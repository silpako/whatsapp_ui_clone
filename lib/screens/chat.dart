import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class whatsapp_chat extends StatelessWidget {
  var image = [
    "assets/img/sid.jpg",
    "assets/img/sharukh.jpg",
    "assets/img/mohanlal.jpg",
    "assets/img/sobhana.jpg",
    "assets/img/urvasi.jpg",
  ];
  var name = ["Sidharth", "Sharukh", "Mohan lal", "Sobhana", "Urvasi"];

  var Messages = [
    "Hi all....",
    "How are you...",
    "Hai......",
    "Hai........"
        "Hai........"
  ];
  var time = ["10.00 pm", "9.30 pm", "9.15 pm", "8.00 pm", "10.00am"];
  var tick = [
    Icon(
      CupertinoIcons.pin,
      color: Colors.grey,
      size: 20,
    ),
    Icon(
      Icons.done_all,
      color: Colors.grey,
      size: 20,
    ),
    Icon(
      Icons.done,
      color: Colors.grey,
      size: 20,
    ),
    Icon(
      Icons.done_all,
      color: Colors.blue,
      size: 20,
    ),
    Icon(
      Icons.done_all,
      color: Colors.blue,
      size: 20,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(name[index]),
                subtitle: Text(Messages[index]),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(image[index]),
                ),
                trailing: Column(mainAxisSize: MainAxisSize.min, children: [
                  Text(time[index]),
                  SizedBox(
                    height: 10,
                  ),
                  tick[index], // icons
                ]),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
