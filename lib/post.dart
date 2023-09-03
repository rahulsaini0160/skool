import 'package:flutter/material.dart';

class postData extends StatefulWidget {
  const postData({super.key});

  @override
  State<postData> createState() => _postDataState();
}

class _postDataState extends State<postData> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.purple,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Profile",
                    style: TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.w700,
                        color: Colors.purple),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 60,
                    ),
                    Column(
                      children: [
                        Text(
                          "Jenny Wilson",
                          style: TextStyle(fontSize: 22),
                        ),
                        Text(
                          "Product Manager",
                          style: TextStyle(fontSize: 15),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple,
                          ),
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: _mediaQuery.size.height * 0.04,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            50.0), // Adjust the border radius as needed
                      ),
                      prefixIcon: Icon(Icons.person), // Prefix Icon
                      hintText: 'Personal Information', // Placeholder text
                      suffixIcon: Icon(Icons.navigate_next), // Suffix Icon
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: _mediaQuery.size.height * 0.02,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            50.0), // Adjust the border radius as needed
                      ),
                      prefixIcon: Icon(Icons.lock_open), // Prefix Icon
                      hintText: 'Change Password', // Placeholder text
                      suffixIcon: Icon(Icons.navigate_next), // Suffix Icon
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: _mediaQuery.size.height * 0.02,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            50.0), // Adjust the border radius as needed
                      ),
                      prefixIcon: Icon(Icons.person), // Prefix Icon
                      hintText: 'Theme', // Placeholder text
                      suffixIcon: Icon(Icons.navigate_next), // Suffix Icon
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: _mediaQuery.size.height * 0.05,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            50.0), // Adjust the border radius as needed
                      ),
                      prefixIcon: Icon(
                        Icons.logout,
                        color: Colors.red,
                      ), // Prefix Icon
                      hintText: 'Logout',
                      hintStyle:
                          TextStyle(color: Colors.red), // Placeholder text
                      suffixIcon: Icon(Icons.navigate_next), // Suffix Icon
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: _mediaQuery.size.height * 0.075,
        child: BottomNavigationBar(
          // currentIndex: _currentIndex,
          // onTap: (int index) {
          //   setState(() {
          //     _currentIndex = index;
          //   });
          // },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
