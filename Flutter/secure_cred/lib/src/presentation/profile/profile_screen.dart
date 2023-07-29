import 'package:flutter/material.dart';
import 'package:random_avatar/random_avatar.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
            onPressed: () => {},
          )
        ],
      ),
      backgroundColor: const Color.fromARGB(225, 242, 242, 242),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
                flex: 1,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            RandomAvatar('saytoonz', height: 100, width: 100),
                      ),
                      const Text(
                        'Vector Crop',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'thevectorcrop@gmail.com',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5699999928474426),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ])),
             Flexible(
                flex: 2,
                child: Container(
                    decoration:  const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                    child: const Column(children: [
                       ProfileButtons(title: "Edit Profile", icon: Icons.logout_sharp ),
                       ProfileButtons(title: "Encryption Policy", icon: Icons.logout_sharp ),
                       ProfileButtons(title: "User Management", icon: Icons.logout_sharp ),
                       Divider(indent: 16, endIndent: 16,),
                       ProfileButtons(title: "Logout", icon: Icons.logout_sharp ),
                    ])))
          ]),
    );
  }
}

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({
    Key? key,
    required this.title,
    this.icon = Icons.arrow_forward_ios_sharp,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(225, 242, 242, 242),
          ),
          child:  Center(
            child: Icon(icon, color: Colors.black),
          ),
        ),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}

