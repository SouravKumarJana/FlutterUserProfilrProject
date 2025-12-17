import 'package:flutter/material.dart';
import 'card.dart';

class InfoCardStack extends StatelessWidget{
  const InfoCardStack({super.key});
  @override
  Widget build(BuildContext context) {
   return Column(
    children: [
      InfoCard(icon: Icons.group, title: 'Followers', value: '1200'),
     InfoCard(icon: Icons.person_2, title: 'Following', value: '200'),
     InfoCard(icon: Icons.ice_skating, title: 'Posts', value: '353'),
    ]
  );
  }
}