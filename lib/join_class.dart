import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class join_class extends StatelessWidget {
  const join_class({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          bottom: PreferredSize(
            child: Container(
              color: Colors.grey.withOpacity(0.3),
              height: 1,
            ),
            preferredSize: Size.fromHeight((0)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0, primary: Color(0xffE7E9E8)),
                  onPressed: () {},
                  child: Text(
                    "  Join  ",
                    style: TextStyle(color: Color(0xffA7A9A8)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(
                Icons.more_vert,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ],
          leading: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'Home');
              },
              child: Icon(Icons.close)),
          title: Text(
            "Join class",
            style: TextStyle(color: Color(0xff212121)),
          )),
      body: Padding(
        padding: EdgeInsets.only(
          top: 25,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 17, right: 17),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Text(
                      "You're currently signed in as",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                    ),
                  ),
                ),
                Card(
                  shape: Border(
                      bottom: BorderSide(
                          width: 1.2, color: Colors.black.withOpacity(0.1))),
                  elevation: 0,
                  child: ListTile(
                    title: Text("6600 Rahul Varun"),
                    subtitle: Text("varunrahvics20@student.mes.ac.in"),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://lh3.google.com/u/5/ogw/ADea4I4AqTq_nqRQUljR7GrVXuRwDkv2yQHS61FJo_ao=s64-c-mo"),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Ask you a teacher for the class code, then enter it here."),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            label: Text("Class code"),
                            hintText: "Class code",
                            border: OutlineInputBorder()),
                      )),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "To sign in with a class code",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("\u2022 Use an authorized account"),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "\u2022 Use a class code, with 6 to 7 letters and numbers, and no space or symbols"),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                        text: TextSpan(
                            text:
                                'If you are having trouble joining the class, go to the ',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                            children: [
                          TextSpan(
                            text: 'Help Center article',
                            style: TextStyle(color: Colors.blue[700]),
                          )
                        ])),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
