import 'package:flutter/material.dart';
import '../../../../data/models/user_model.dart';

class UserCard extends StatelessWidget {
  final UserModel user;
  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ListTile(
        title: Text(user.name),
        subtitle: Text(user.email),
      ),
    );
  }
}
