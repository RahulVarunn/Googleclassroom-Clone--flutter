class class_data {
  static final classroom_data = [
    classroom(
        div: "A & B",
        teacher_name: "Abhijeet Salvi",
        subject: "S.Y.B.Sc. Computer Science (Div A) 2021-22",
        img: "https://www.gstatic.com/classroom/themes/img_code.jpg"),
    classroom(
        div: "2021-22 Examination",
        teacher_name: "Shubhangi Pawar",
        subject: "SYCS SEM 4 END EXAM 2021-22",
        img: "https://www.gstatic.com/classroom/themes/img_code.jpg"),
    classroom(
        div: "Prof. Pradnya Kumavat",
        teacher_name: "Pradnya Kumavat",
        subject: "SYCS B Data Science",
        img: "https://gstatic.com/classroom/themes/Writing.jpg"),
    classroom(
        div: "SEM IV",
        teacher_name: "Varsha Chatuphale",
        subject: "OPERATING SYSTEMS [SY.C.S 21-22]",
        img: "https://www.gstatic.com/classroom/themes/img_code.jpg"),
    classroom(
        div: "A,B,C",
        teacher_name: "Sudha Ramesh",
        subject: "S.Y.B.Sc COMPUTER SCIENCE(NUMERICAL METHODS)",
        img: "https://www.gstatic.com/classroom/themes/img_code.jpg"),
  ];
}

class classroom {
  final String subject;
  final String div;
  final String teacher_name;
  final String img;

  classroom({
    required this.subject,
    required this.div,
    required this.teacher_name,
    required this.img,
  });
}
