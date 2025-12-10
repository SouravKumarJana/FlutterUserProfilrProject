import 'package:flutter/material.dart';

void main(){
  runApp(UserProfileApp());
}

class UserProfileApp extends StatelessWidget {
  const UserProfileApp({super.key});
  
  @override
  Widget build(BuildContext context ){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 76, 163, 175),
          title: Center(child: Text('Profile')),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: userProfile(),
        ),
      )
      
    );
  }

}

class userProfile extends StatelessWidget{
  const userProfile({super.key});


  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(10), 
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(66, 234, 230, 230),
            blurRadius: 8,
            offset: Offset(0, 4), 
          )
        ],
      ), 
      child: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            backgroundImage: AssetImage('assets/user.png'),
            radius: 30,
          ),
          SizedBox(height: 4),
          Text('Akash Sahu', style: TextStyle(fontSize: 20)),
          SizedBox(height: 4),
          Text('akash@gmail.com', style: TextStyle(fontSize: 12)),
          SizedBox(height: 15),
          infoCard(Icons.people, 'Followers', '1222'),
          infoCard(Icons.group, 'Followers', '1222'),
          infoCard(Icons.people, 'Followers', '1222'),
          SizedBox(height: 25),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){},
              child: Text('Edit', style: TextStyle(color: Colors.white)),
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                )
              )
              
              
            ),
          )

        ],
      ),
    );
  }

  Widget infoCard(IconData icon, String title, String value) {
    return Card(
      
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(icon, size: 30),
            SizedBox(width: 20),

            Column(
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  value,
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}