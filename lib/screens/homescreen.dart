import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/calls.dart';
import 'package:whatsapp_ui_clone/screens/chat.dart';
import 'package:whatsapp_ui_clone/screens/people.dart';
import 'package:whatsapp_ui_clone/screens/status.dart';

class Whatsapp_Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Whatsapp",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(
                    child: Text(
                  "New Group",
                  style: TextStyle(fontSize: 12),
                )),
                PopupMenuItem(
                    child: Text(
                  "New Broadcast",
                  style: TextStyle(fontSize: 12),
                )),
                PopupMenuItem(
                    child: Text(
                  "Linked Device",
                  style: TextStyle(fontSize: 12),
                )),
                PopupMenuItem(
                    child: Text(
                  "Starred Messages",
                  style: TextStyle(fontSize: 12),
                )),
                PopupMenuItem(
                    child: Text(
                  "Payments",
                  style: TextStyle(fontSize: 12),
                )),
                PopupMenuItem(
                    child: Text(
                  "Settings",
                  style: TextStyle(fontSize: 12),
                )),
                PopupMenuItem(
                    child: Text(
                  "Switch accounts",
                  style: TextStyle(fontSize: 12),
                ))
              ];
            })
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(AppBar().preferredSize.height),
              child: Container(
                child: TabBar(tabs: [
                  Tab(
                    icon: Icon(Icons.people_rounded),
                  ),
                  Tab(text: "Chat"),
                  Tab(text: "Status"),
                  Tab(text: "Calls"),
                ]),
              )),
        ),
        body: TabBarView(children: [
          whatsapp_people(),
          whatsapp_chat(),
          whatsapp_status(),
          whatsapp_call(),
        ]),
      ),
    );
  }
}
