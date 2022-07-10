import 'package:flutter/material.dart';

class drawer_list extends StatefulWidget {
  final detail;

  const drawer_list({Key? key, required this.detail}) : super(key: key);

  @override
  _drawer_listState createState() => _drawer_listState();
}

class _drawer_listState extends State<drawer_list> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.detail.subject,
        style: TextStyle(
          fontSize: 13.5,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      subtitle: Text(
        widget.detail.div,
        style: TextStyle(
          fontSize: 12,
        ),
      ),
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: Color(0xff4286F3),
        child: Text("S"),
      ),
    );
  }
}
