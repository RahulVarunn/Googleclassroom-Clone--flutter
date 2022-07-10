import 'package:flutter/material.dart';
import 'package:google_classroom_ui/widget/list.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_classroom_ui/widget/drawer.dart';
import 'package:google_classroom_ui/widget/list.dart';
import 'package:google_classroom_ui/widget/list_model.dart';
import 'drawer_list.dart';
import 'drawer_model.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Title(
                    color: Colors.amber,
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                              text: "G",
                              style: TextStyle(
                                  color: Color(0xff4386F1).withOpacity(0.9),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500),
                              children: [
                                TextSpan(
                                    text: "o",
                                    style: TextStyle(
                                      color: Color(0xffE74435).withOpacity(0.9),
                                    )),
                                TextSpan(
                                    text: "o",
                                    style: TextStyle(
                                        color: Color(0xffF6BD0E)
                                            .withOpacity(0.9))),
                                TextSpan(
                                    text: "g",
                                    style: TextStyle(
                                        color: Color(0xff4386F1)
                                            .withOpacity(0.9))),
                                TextSpan(
                                    text: "l",
                                    style: TextStyle(
                                        color: Color(0xff34A853)
                                            .withOpacity(0.9))),
                                TextSpan(
                                    text: "e",
                                    style: TextStyle(
                                        color: Color(0xffE74435)
                                            .withOpacity(0.9))),
                                TextSpan(
                                    text: " Classroom",
                                    style: TextStyle(
                                        color:
                                            Color(0xff5E6166).withOpacity(0.7),
                                        fontWeight: FontWeight.w400)),
                              ]),
                        ))),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 7,
                ),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 1.3, color: Colors.black.withOpacity(0.1)))),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Color(0xff64676C),
                ),
                title: Text(
                  "Classes",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.calendar_today,
                  color: Color(0xff64676C),
                ),
                title: Text(
                  "Calender",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications_none,
                  color: Color(0xff64676C),
                ),
                trailing: CircleAvatar(
                  backgroundColor: Color(0xffD83025),
                  child: Text(
                    "13",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                  radius: 12,
                ),
                title: Text(
                  "Notifications",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 6),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 1.3, color: Colors.black.withOpacity(0.1)))),
              ),
              ListTile(
                leading: Text(
                  "Enrolled",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff757575)),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 25),
                leading: Icon(
                  Icons.fact_check_outlined,
                  color: Color(0xff64676C),
                ),
                title: Text(
                  "To-do",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                child: ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: drawer_data.data_drawer.length,
                  itemBuilder: (BuildContext context, index) {
                    return drawer_list(detail: drawer_data.data_drawer[index]);
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
