import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text("gasdf"),
      // ),

      body: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 35, 51, 66)),
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 40, right: 30.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Welcome",
                        style: TextStyle(color: Colors.white, fontSize: 19.0),
                      ),
                      Text(
                        "Find your course",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 35,
                        ),
                        onPressed: () {
                          // Implement search functionality here
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              Column(
                children: <Widget>[
                  Card(
                    color: Color.fromARGB(255, 255, 244, 214),
                    child: Container(
                      padding: EdgeInsets.only(left: 10, top: 25, bottom: 25),
                      width: double.infinity,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "60% off",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  "Feb 14 - Mar 20",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15.0),
                                ),
                                SizedBox(height: 7),
                                TextButton(
                                  onPressed: () {
                                    // Handle button press
                                    print('Button pressed');
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        255,
                                        45,
                                        58,
                                        68), // Set the background color here
                                  ),
                                  child: Text(
                                    "Join Course",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80.0),
                            child: Image.asset(
                              'assets/images/sbag.png', // Path to your asset image
                              width: 110,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Subject",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 208.0),
                    child: Text(
                      "See all",
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Card(
                          color: Color.fromARGB(255, 72, 85, 97),
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 28, top: 20, bottom: 20, right: 28),
                            // width: double.infinity,
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/math.jpg', // Path to your asset image
                                  width: 65,
                                  height: 65,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Mathematics",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18.0),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "\$10/month",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "* 4.9(694 review)",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: [
                        Card(
                          color: Color.fromARGB(255, 72, 85, 97),
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 35, top: 20, bottom: 20, right: 35),
                            // width: double.infinity,
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/chem.jpg', // Path to your asset image
                                  width: 65,
                                  height: 65,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Chemistry",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18.0),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "\$14/month",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0),
                                ),
                                SizedBox(height: 4),
                                
                                Text(
                                  "* 4.8(464 review)",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Card(
                          color: Color.fromARGB(255, 72, 85, 97),
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 36, top: 20, bottom: 20, right: 36),
                            // width: double.infinity,
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/bio.jpg', // Path to your asset image
                                  width: 65,
                                  height: 65,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Biology",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18.0),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "\$16/month",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "* 4.9(694 review)",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: [
                        Card(
                          color: Color.fromARGB(255, 72, 85, 97),
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 34, top: 20, bottom: 20, right: 34),
                            // width: double.infinity,
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/lang.png', // Path to your asset image
                                  width: 65,
                                  height: 65,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Language",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18.0),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "\$16/month",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "* 4.8(464 review)",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
