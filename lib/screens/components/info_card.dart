import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String name, profession;

  const InfoCard({
    super.key,
    required this.name,
    required this.profession,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.white24,
        child: Icon(
          Icons.person_outline,
          color: Colors.white,
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        profession,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
