import 'package:flutter/material.dart';

class whatsapp_call extends StatelessWidget {
  var image = [
    "assets/img/sid.jpg",
    "assets/img/sid.jpg",
    "assets/img/sid.jpg",
    "assets/img/sid.jpg",
    "assets/img/sid.jpg",
    "assets/img/sid.jpg",
    "assets/img/sid.jpg",
    "assets/img/sid.jpg",
  ];
  var name = [
    "Sidharth",
    "Sidharth",
    "Sidharth",
    "Sidharth",
    "Sidharth",
    "Sidharth",
    "Sidharth",
    "Sidharth",
  ];
  var i_con = [
    Icon(
      Icons.call_missed,
      color: Colors.red,
      size: 20,
    ),
    Icon(
      Icons.call_missed,
      color: Colors.red,
      size: 20,
    ),
    Icon(
      Icons.call,
      color: Colors.green,
      size: 20,
    ),
    Icon(
      Icons.call,
      color: Colors.green,
      size: 20,
    ),
    Icon(
      Icons.call_missed,
      color: Colors.red,
      size: 20,
    ),
    Icon(
      Icons.call_missed,
      color: Colors.red,
      size: 20,
    ),
    Icon(
      Icons.call,
      color: Colors.green,
      size: 20,
    ),
    Icon(
      Icons.call,
      color: Colors.green,
      size: 20,
    )
  ];

  var day = [
    "Today,10.00 pm",
    "Today,11.00 am",
    "Today,10.00am",
    "Yesterday,11.00pm",
    "Yesterday,11.00 am",
    "Yesterday,10.00am",
    "Yesterday,9.00am",
    "Monday at 9.00pm"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.insert_link_outlined),
              backgroundColor: Colors.teal,
            ),
            title: Text("Create Call Link"),
            subtitle: Text("Share a Link"),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(name[index]),
                      subtitle: Row(children: [
                        i_con[index],
                        SizedBox(
                          width: 10,
                        ),
                        Text(day[index]),
                        SizedBox(
                          width: 3,
                        ),
                      ]),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(image[index]),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
