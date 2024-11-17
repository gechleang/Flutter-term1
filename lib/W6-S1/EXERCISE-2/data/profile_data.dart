import 'package:flutter/material.dart';
import 'package:practice/W6-S1/EXERCISE-2/model/profile_tile_model.dart';
//import 'package:test1/W5-S2-List-Inputs/1%20-%20START%20CODE/EXERCISE-2/model/profile_tile_model.dart';
 
ProfileData GechleangProfile = ProfileData(
    name: "Gechleang",
    position: "Flutter Developer",
    avatarUrl: 'Assets/images/gechleang.png',
    tiles: [
      TileData( icon: Icons.phone, title: "Phone Number", value: "+855 855 353 87"),
      TileData(icon: Icons.location_on, title: "Address", value: "123 Cambodia"),
      TileData(icon: Icons.email, title: "Mail", value: "gechleang.lysan@student.cadt.edu.kh"),
    ]);
