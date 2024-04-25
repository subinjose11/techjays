import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tv_shows/pages/show_info.dart';

import '../modules/show_module.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<dynamic>> getShows() async {
    try {
      final response =
          await http.get(Uri.parse('https://api.tvmaze.com/shows'));
      final List<dynamic> data = jsonDecode(response.body);
      return data;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TV Shows",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: FutureBuilder(
        future: getShows(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          final List<dynamic> everyShow = snapshot.data as List<dynamic>;

          //Body of UI ,Grid View for each Shows
          return Padding(
            padding: const EdgeInsets.all(2),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: everyShow.length,
              itemBuilder: (context, index) {
                final eachshow = everyShow[index];
                final show = ShowModule.fromJson(eachshow);

                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    child: Card(
                      elevation: 15,
                      child: GridTile(
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Ink.image(
                            image: NetworkImage(
                              "${show.image?.medium}",
                            ),
                            fit: BoxFit.fill,
                            child: InkWell(onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ShowInfo(showdata: eachshow)),
                              );
                            }),
                          ),
                          Text(
                            "${show.name}",
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
