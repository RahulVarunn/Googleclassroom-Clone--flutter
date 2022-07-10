import 'package:flutter/material.dart';
import 'package:google_classroom_ui/widget/list_model.dart';

class list extends StatefulWidget {
  final detail;

  const list({Key? key, this.detail}) : super(key: key);

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, bottom: 5, right: 8),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        margin: EdgeInsets.only(top: 1),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: NetworkImage(widget.detail.img),
                  fit: BoxFit.fitHeight)),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 285,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 16, left: 16, bottom: 2),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            widget.detail.subject,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                            softWrap: false,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20),
                    child: Align(
                      child: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(widget.detail.div,
                        style: TextStyle(fontSize: 14, color: Colors.white))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 55, left: 14, bottom: 14),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(widget.detail.teacher_name,
                        style: TextStyle(fontSize: 12, color: Colors.white))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
