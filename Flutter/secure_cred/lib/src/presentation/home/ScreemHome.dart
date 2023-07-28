import 'package:flutter/material.dart';
import 'package:secure_cred/utils/device_utils.dart';

class ScreenHome extends StatelessWidget {
  final ValueNotifier<int> _selectedTabNotifier = ValueNotifier(0);

  ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBarWithDrawerAndAvatar(
          imageUrl: '',
          title: 'Secure Crud',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpacer(20),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              'Your Dashboard',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          verticalSpacer(16),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFEBEBEB), // Set the background color here
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.black,
                    hintText: 'Search',
                    hintStyle: const TextStyle(
                      color: Color(0xFF2F2F2F),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xFF2F2F2F),
                    ),
                    suffixIcon: Container(
                      margin: const EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      width: 46,
                      child: const Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        selectedTabNotifier: _selectedTabNotifier,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    super.key,
    required ValueNotifier<int> selectedTabNotifier,
  }) : _selectedTabNotifier = selectedTabNotifier;

  final ValueNotifier<int> _selectedTabNotifier;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color(0xFFEBEBEB),
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              _selectedTabNotifier.value = 0;
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              _selectedTabNotifier.value = 1;
            },
          ),
          const SizedBox(),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              _selectedTabNotifier.value = 2;
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              _selectedTabNotifier.value = 3;
            },
          ),
        ],
      ),
    );
  }
}

class AppBarWithDrawerAndAvatar extends StatelessWidget {
  final String title;
  final String imageUrl;

  const AppBarWithDrawerAndAvatar({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        color: Colors.black,
        icon: const Icon(Icons.menu),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
      actions: [
        Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
      ],
    );
  }
}
