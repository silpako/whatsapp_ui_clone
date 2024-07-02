import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.teal),
    home: whatsapp_people(),
  ));
}

class whatsapp_people extends StatelessWidget {
  var image = [
    "assets/img/flutter.png",
    "assets/img/family.png",
    "assets/img/book.jpg",
    "assets/img/job.png",
  ];
  var name = ["Flutter Framwork", "Family", "Books", "Jobs"];

  var Messages = [
    "Hi all....",
    "How are you...",
    "Peter Pan...",
    "Hiring....."
  ];
  var time = ["10.00 pm", "9.30 pm", "9.15 pm", "8.00 pm"];
  var count = ["13", "3", "5", "1"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: name.length,
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
                  CircleAvatar(
                    minRadius: 4,
                    maxRadius: 10,
                    backgroundColor: Colors.teal,
                    child: Text(
                      count[index],
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  )
                ]),
              ),
            );
          }),
    );
  }
}
