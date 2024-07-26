import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    String firstName = "Esra";
    String lastName = "Bashir";
    String email = "esra20b@gmail.com";
    String studentNumber = "2191807521";
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade300,
        foregroundColor: Colors.black,
        radius: 40,
        child: Text(
          '${firstName[0]}${lastName[0]}',
          style: const TextStyle(fontSize: 20),
        ),
      ),
      title: Text('$firstName $lastName'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(email),
          Text('Student Number: $studentNumber'),
        ],
      ),
    );
  }
}
