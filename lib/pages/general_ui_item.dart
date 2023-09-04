import 'package:flutter/material.dart';

Future pushRoute(context, page) async {
  await Navigator.push(context, MaterialPageRoute(builder: (c) => page));
}

Widget verticalSpace({double height = 8}) {
  return SizedBox(height: height);
}

Widget horizontalSpace({double width = 8}) {
  return SizedBox(width: width);
}

Widget showTimerIcon(context) {
  return InkWell(
    onTap: () {
      // Navigator.push(context, MaterialPageRoute(builder: (c) => TimerPage()));
    },
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Image.network(
        "https://images.unsplash.com/photo-1586023492125-27b2c045efd7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aG9tZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        color: Colors.white,
      ),
    ),
  );
}
