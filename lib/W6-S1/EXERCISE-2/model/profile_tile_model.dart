import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
const Color mainColor = Color(0xff5E9FCD);
class ProfileData {
  final String name;
  final String position;
  final String avatarUrl;
  final List<TileData> tiles;

  ProfileData(
      {required this.name, required this.position, required this.tiles, required this.avatarUrl});
}

class TileData {
  final IconData icon;
  final String title;
  final String value;

  TileData(
      {required this.icon,
      required this.title,
      required this.value});  
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    required this.icon,
    required this.title,
    required this.data,
  });

  final IconData icon;
  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: ListTile(
          leading: Icon(icon, color: mainColor),
          title: Text(title),
          subtitle: Text(data),
        ),
      ),
    );
  }
}
