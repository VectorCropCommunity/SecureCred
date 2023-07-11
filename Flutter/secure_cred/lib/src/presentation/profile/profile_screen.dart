import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            height: 20.03,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_horiz),
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
                child: Center(
                    child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.width / 3,
                  child: Column(children: [
                    const CircleAvatar(
                      radius: 50,
                    ),
                    const Text(
                      'Vector Crop',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 24.03,
                      ),
                    ),
                    Text(
                      'thevectorcrop@gmail.com',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5699999928474426),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 16.02,
                      ),
                    )
                  ]),
                ))),
            Flexible(
                flex: 2,
                child: Container(
                    decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    padding: const EdgeInsets.all(8),
                    child: Column(children: [
                      TextButton(
                          child: const ListTile(
                            leading: Icon(Icons.edit_square),
                            title: Text('Edit Profile'),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          onPressed: () {}),
                      TextButton(
                          child: const ListTile(
                            leading: Icon(Icons.edit_document),
                            title: Text('Encryption Policy'),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          onPressed: () {}),
                      TextButton(
                          child: const ListTile(
                            leading: Icon(Icons.person_pin),
                            title: Text('User Management'),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          onPressed: () {}),
                      const Divider(),
                      TextButton(
                          child: const ListTile(
                            leading: Icon(Icons.logout_sharp),
                            title: Text('Logout'),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          onPressed: () {}),
                    ])))
          ]),
    );
  }
}
