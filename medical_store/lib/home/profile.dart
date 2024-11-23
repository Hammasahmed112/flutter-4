import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const Padding(
          padding: EdgeInsets.only(top: 20, left: 20),
          child: Text(
            'My Profile',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:80,left: 25 ),
          child: Container(
            width: 63,
            height: 62,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                  'accets/images/417006580_2161961464169341_3020076478770961079_n.jpg'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 80,left: 100),
          child: SizedBox(
            width: 220,
            height: 100,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hi, Hammas Ahmed',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                Text('Welcome to  Quick Medical Store',style:TextStyle(fontSize: 14) ,),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200),
          child: ListView(
            children: const [
              ListTile(
                leading: Icon(Icons.contact_page_outlined),
                title: Text('Edit Profile'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(indent:50 ),
              ListTile(
                leading: Icon(Icons.card_giftcard_rounded),
                title: Text('My orders'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(indent: 50,),
              ListTile(
                leading: Icon(Icons.timer_sharp),
                title: Text('Billing'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(indent: 50,),
              ListTile(
                leading: Icon(Icons.question_mark_outlined),
                title: Text('Faq'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(indent: 50,),
            ],
          ),
        )
      ]),
    );
  }
}
