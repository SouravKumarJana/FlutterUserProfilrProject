import 'package:flutter/material.dart';


class UserprofileScreen extends StatelessWidget{
  const UserprofileScreen({super.key});

  @override
  Widget build (BuildContext context){
  final TextStyle nameStyle = const TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
  final TextStyle subtitleStyle = TextStyle(fontSize: 16, color: Colors.grey[600]);
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(title: const Text('User Profile'), centerTitle: true ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(14),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade100, width: 2),
                  color: Colors.white,
                  boxShadow:[
                    BoxShadow(color: Colors.grey.withValues(alpha: 0.15), blurRadius: 8, offset: const Offset(0, 6))
                  ],
                
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    ClipOval(
                      child:Material(
                        color: Colors.grey[100],
                        child: Ink.image(
                          image: AssetImage('assets/images/userlogo.png'),
                          fit: BoxFit.cover,
                          width: 150,
                          height: 150,
                          child: InkWell(
                            onTap: (){},
                            child:Semantics(label: "Profile Picture",)
                          )
                        ),
                      )
                    ),
                    const SizedBox(height: 14),
                    Text('User Name', style:nameStyle ),
                    const SizedBox(height: 6),
                    Text('username@gmail.com', style: subtitleStyle,),
                    SizedBox(height: 20,),
                    InfoCard(icon: Icons.group, title: 'Followers', value: '1200'),
                    InfoCard(icon: Icons.person_2, title: 'Following', value: '200'),
                    InfoCard(icon: Icons.ice_skating, title: 'Posts', value: '353'),
                    SizedBox(height: 12,),
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          backgroundColor: Colors.blue,
                        ),
                        child: const Text('Edit Profile', style: TextStyle(fontSize: 18, color: Colors.white)),
                      ),
                    ),
                  ],
                )
            )
          ),

        )
      ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.icon, required this.title, required this.value});

  final IconData icon;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 18);

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white30),
        boxShadow: const [BoxShadow(color: Color.fromARGB(255, 216, 212, 212), blurRadius: 2, spreadRadius: 0.2)],
      ),
      child: Row(
        children: [
          Icon(icon, size: 30, color: Colors.grey[700]),
          const SizedBox(width: 16),
          Text(title, style: textStyle),
          const Spacer(),
          Text(value, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}