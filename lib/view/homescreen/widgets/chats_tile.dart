import 'package:flutter/material.dart';

class ChatsTitle extends StatelessWidget {
  const ChatsTitle(
      {super.key,
      this.imageUrl,
      required this.username,
      required this.lastmessage,
      required this.time,
      required this.count});

  final String? imageUrl;
  final String username, lastmessage, time;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            CircleAvatar(radius: 25),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                Text(
                  "data : message",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                )
              ],
            ),
            Spacer(),
            Column(
              children: [
                Text("12.00"),
                CircleAvatar(
                  radius: 10,
                  child: Text("1"),
                  backgroundColor: Colors.green,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
