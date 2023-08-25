import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key,required this.subName,required  this.subImage});

final String subName;
final String subImage;
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 35, 51, 66)),
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 30, right: 25.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    "Details",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 80),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Card(
                      color: Color.fromARGB(255, 72, 85, 97),
                      child: Container(
                        padding: EdgeInsets.only(left: 20, top: 12, bottom: 12),
                        width: double.infinity,
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  widget.subName,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "* 4.8 . 486 review >",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Container(
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 244, 214),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left:12.0),
                                  child: Center(
                                    child: Text(
                                      'Fee \$20',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 35, 51, 66),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  Image.asset(
                   widget.subImage, // Replace with your image path
                    width: 240, // Adjust width as needed
                    height: 240, // Adjust height as needed
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Outline",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 160.0),
                      child: Text(
                        "View all",
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Card(
                      color: Color.fromARGB(255, 72, 85, 97),
                      child: Container(
                        padding: EdgeInsets.only(left: 20, top: 12, bottom: 12),
                        width: double.infinity,
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/mathe.png', // Replace with your image path
                              width: 30, // Adjust width as needed
                              height: 30, // Adjust height as needed
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Order of Operations...",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "16:56 min",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.0),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 244, 214),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.play_arrow,
                                    color: Color.fromARGB(255, 35, 51, 66),
                                    size: 20,
                                  ),
                                  onPressed: () {
                                    // Implement search functionality here
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Card(
                      color: Color.fromARGB(255, 72, 85, 97),
                      child: Container(
                        padding: EdgeInsets.only(left: 20, top: 12, bottom:12),
                        width: double.infinity,
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/sine.png', // Replace with your image path
                              width: 30, // Adjust width as needed
                              height: 30, // Adjust height as needed
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Sine,Cosine,Tanget...",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "24:36 min",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.0),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Container(
                                width: 40,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 244, 214),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.play_arrow,
                                    color: Color.fromARGB(255, 35, 51, 66),
                                    size: 20,
                                  ),
                                  onPressed: () {
                                    // Implement search functionality here
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Card(
                      color: Color.fromARGB(255, 255, 244, 214),
                      child: Container(
                        padding: EdgeInsets.only(left: 10, top: 6, bottom: 6),
                        width: double.infinity,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Container(
                                width: 52,
                                height: 52,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 35, 51, 66),
                                  borderRadius: BorderRadius.circular(22),
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.lock,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                  onPressed: () {
                                    // Implement search functionality here
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Unlock Course Now",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 35, 51, 66),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Icon(
                              Icons.navigate_next,
                              color: Colors.black,
                              size: 12,
                            ),
                            Icon(
                              Icons.navigate_next,
                              color: Color.fromARGB(255, 35, 51, 66),
                              size: 19,
                            ),
                            Icon(
                              Icons.navigate_next,
                              color: Color.fromARGB(255, 35, 51, 66),
                              size: 23,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
