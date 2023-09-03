import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('POST Request Example'),
        ),
        body: PostRequestWidget(),
      ),
    );
  }
}

class PostRequestWidget extends StatefulWidget {
  @override
  _PostRequestWidgetState createState() => _PostRequestWidgetState();
}

class _PostRequestWidgetState extends State<PostRequestWidget> {
  final TextEditingController _controller = TextEditingController();
  String _response = '';

  Future<void> postData() async {
    final url = Uri.parse(
        'https://jsonplaceholder.typicode.com/posts'); // Replace with your API endpoint

    try {
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, dynamic>{
          'title': _controller.text,
          // Add more key-value pairs as needed
        }),
      );

      if (response.statusCode == 201) {
        // If the server returns a 201 Created response, you can handle the result
        // (e.g., parse response body or perform other actions).
        setState(() {
          _response = 'Data posted successfully';
        });
      } else {
        // If the server did not return a 201 Created response,
        // throw an exception or handle the error as needed.
        setState(() {
          _response = 'Failed to post data';
        });
      }
    } catch (error) {
      // Handle network errors or other exceptions
      setState(() {
        _response = 'Error: $error';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(labelText: 'Data to Post'),
          ),
        ),
        ElevatedButton(
          onPressed: postData,
          child: Text('Post Data'),
        ),
        SizedBox(height: 20),
        Text(
          _response,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
