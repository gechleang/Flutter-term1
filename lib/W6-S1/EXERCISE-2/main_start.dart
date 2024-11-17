import 'package:flutter/material.dart';
import 'model/profile_tile_model.dart';
import 'data/profile_data.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileApp(
      profile: GechleangProfile,
    ),
  ));
}

const Color mainColor = Color(0xff5E9FCD);

class ProfileApp extends StatelessWidget {
  final ProfileData profile;
  const ProfileApp({super.key,required this.profile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor.withAlpha(100),
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text(
          'CADT student Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                  'assets/w5-s2/aang.png'), 
            ),
            SizedBox(height: 20),
            Text(
              'Lysan Gechleang',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: mainColor,
              ),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: profile.tiles.length,
                itemBuilder: (context, index) {
                  final tile = profile.tiles[index];
                  return ProfileTile(
                    icon: tile.icon,
                    title: tile.title,
                    data: tile.value,
                  );
                },)
          ],
        ),
      ),
    );
  }
}

