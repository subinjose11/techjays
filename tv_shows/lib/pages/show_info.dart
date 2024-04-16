import 'package:flutter/material.dart';

class ShowInfo extends StatefulWidget {
  final Map<String, dynamic> jsondata;

  const ShowInfo({Key? key, required this.jsondata}) : super(key: key);

  @override
  State<ShowInfo> createState() => _ShowInfoState();
}

class _ShowInfoState extends State<ShowInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.jsondata['name']),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Display show information here
              Text(
                "ID: ${widget.jsondata}",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                "Type: ${widget.jsondata['type']}",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                "Language: ${widget.jsondata['language']}",
                style: TextStyle(fontSize: 18),
              ),
              // Add more information as needed
            ],
          ),
        ),
      ),
    );
  }
}
