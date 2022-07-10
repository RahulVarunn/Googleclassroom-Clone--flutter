// ignore_for_file: unused_label

import 'package:flutter/material.dart';
import 'package:google_classroom_ui/widget/drawer.dart';
import 'package:google_classroom_ui/widget/list.dart';
import 'package:google_classroom_ui/widget/list_model.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 17,
              backgroundImage: NetworkImage(
                "https://lh3.google.com/u/5/ogw/ADea4I4AqTq_nqRQUljR7GrVXuRwDkv2yQHS61FJo_ao=s64-c-mo",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(
              Icons.more_vert,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ],
        title: Text(
          "Google Classroom",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
        ),
        bottom: PreferredSize(
          child: Container(
            color: Colors.grey.withOpacity(0.3),
            height: 1,
          ),
          preferredSize: Size.fromHeight((0)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 10),
              child: Container(
                height: 102,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1), spreadRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 7, right: 10),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            "View to-do list",
                            style: TextStyle(
                                color: Color(0xff3685EA),
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "This week",
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          )),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 18, left: 10, bottom: 6),
                      child: Row(
                        children: [
                          Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                "0",
                                style: TextStyle(fontSize: 26),
                              )),
                          Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                "  assigned",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.7),
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                          Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                "  1",
                                style: TextStyle(fontSize: 24),
                              )),
                          Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                "  missed",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.7),
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              // height: 1500,
              child: ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: class_data.classroom_data.length,
                itemBuilder: (BuildContext context, index) {
                  return list(detail: class_data.classroom_data[index]);
                },
              ),
            ),
          ],
        ),
      ),
      drawer: drawer(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          right: 12,
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'join_class');
          },
          child: Container(
            height: 52,
            width: 52,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
            child: Icon(
              Icons.add,
              color: Colors.blue[700],
            ),
          ),
        ),
      ),
    );
  }
}
