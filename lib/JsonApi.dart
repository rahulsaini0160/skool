import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:skool/model.dart';

class JsonApi extends StatefulWidget {
  const JsonApi({super.key});

  @override
  State<JsonApi> createState() => _JsonApiState();
}

class _JsonApiState extends State<JsonApi> {
  List<dynamic> samplePosts = [];

  ///rahal saini
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.cyanAccent,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    margin: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "User id:${samplePosts[index].userId}",
                          style: TextStyle(fontSize: 22),
                        ),
                        Text(
                          "id:${samplePosts[index].id}",
                          style: TextStyle(fontSize: 22),
                        ),
                        Text(
                          "title:${samplePosts[index].title}",
                          maxLines: 1,
                          style: TextStyle(fontSize: 22),
                        ),
                        Text(
                          "body:${samplePosts[index].body}",
                          maxLines: 1,
                          style: TextStyle(fontSize: 22),
                        ),
                      ],
                    ),
                  );
                });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Future<List<dynamic>> getData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        samplePosts.add(Sample.fromJson(index));
      }
      return samplePosts;
    } else {
      return samplePosts;
    }
  }
}
