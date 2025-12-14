import 'package:flutter/material.dart';
import 'widgets/card.dart';
import 'widgets/rounded_button.dart';
import 'widgets/text_style_widgets/button_text_style.dart';
import 'widgets/text_style_widgets/text_style.dart';
import 'widgets/profile_avatar.dart';



class UserprofileScreen extends StatelessWidget{
  const UserprofileScreen({super.key});

  @override
  Widget build (BuildContext context){
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
                    ProfileAvatar(),
                    const SizedBox(height: 14),
                    NameStyle('User Name'),
                    const SizedBox(height: 6),
                    SubtitleStyle('username@gmail.com'),
                    SizedBox(height: 20,),
                    InfoCard(icon: Icons.group, title: 'Followers', value: '1200'),
                    InfoCard(icon: Icons.person_2, title: 'Following', value: '200'),
                    InfoCard(icon: Icons.ice_skating, title: 'Posts', value: '353'),
                    SizedBox(height: 12,),
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: RoundedButton(
                        btnName: 'Edit Profile', 
                        callback: (){},
                        textStyle: buttonTextStyle
                      )
                     
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

